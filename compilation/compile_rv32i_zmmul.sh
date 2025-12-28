#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "用法: ./compile_rv32i_zmmul.sh <文件名前缀>"
    echo "例如: ./compile_rv32i_zmmul.sh statement_test"
    exit 1
fi

NAME=$1
ARCH=rv32i_zmmul
ABI=ilp32
TAG=zmmul
OUTDIR="${NAME}_${TAG}"
OUTELF="${NAME}_${TAG}.elf"

if [ ! -f "${NAME}.c" ]; then
    echo "错误: 找不到源文件 ${NAME}.c"
    exit 1
fi

LIBGCC=$(riscv64-unknown-elf-gcc -march=${ARCH} -mabi=${ABI} -print-libgcc-file-name)

# 目标：只启用乘法指令（Zmmul），不允许生成 div/rem 等除法/取模指令
riscv64-unknown-elf-gcc \
  -march=${ARCH} -mabi=${ABI} \
  -nostdlib -Wl,-Ttext=0x0 -T ./linker.ld \
  -o "${OUTELF}" start.S "${NAME}.c" "${LIBGCC}"

mkdir -p "${OUTDIR}"

touch "${OUTDIR}/${NAME}.asm"
riscv64-unknown-elf-objdump -d "${OUTELF}" > "${OUTDIR}/${NAME}.asm"

python3 ./extract.py "${OUTELF}" "${OUTDIR}"

rm -f "${OUTDIR}/${NAME}_${TAG}_data.bin" "${OUTDIR}/${NAME}_${TAG}_text.bin" 2>/dev/null || true

cp "${NAME}.c" "${OUTDIR}/"

# 运行（使用本机编译器生成参考退出码），并写入 ans 文件
if command -v cc >/dev/null 2>&1; then
    cc -O2 -std=c11 -o "${OUTDIR}/${NAME}.host" "${NAME}.c"
    set +e
    "./${OUTDIR}/${NAME}.host"
    EXIT_CODE=$?
    set -e
    echo "${EXIT_CODE}" > "${OUTDIR}/${OUTDIR}.ans"
    echo "运行完成，exit code=${EXIT_CODE} 已写入 ${OUTDIR}/${OUTDIR}.ans"
else
    echo "警告: 未找到本机编译器 cc，跳过运行与 ans 生成"
fi

rm -f "${OUTDIR}/${NAME}.host"

echo "RV32I+Zmmul 编译完成（ARCH=${ARCH}, ABI=${ABI}），输出目录：${OUTDIR}"
