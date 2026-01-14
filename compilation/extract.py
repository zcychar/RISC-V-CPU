#!/usr/bin/env python3
"""
extract.py - 从 ELF 文件中提取完整可执行镜像（代码 + 数据）到单个内存初始化文件
"""

import sys
import subprocess
import os

def extract_sections(elf_file, output_dir):
    """从 ELF 文件提取完整镜像（.text + .rodata + .data + .bss）到单个文件"""

    base_name = os.path.splitext(os.path.basename(elf_file))[0]

    # 获取段信息，便于调试
    result = subprocess.run(
        ["riscv64-unknown-elf-readelf", "-S", elf_file],
        capture_output=True,
        text=True,
        check=False,
    )

    print("Section information:")
    print(result.stdout)

    image_bin = os.path.join(output_dir, f"{base_name}.bin")

    # 将所有需要的段按链接地址顺序提取为一个连续的二进制镜像
    subprocess.run(
        [
            "riscv64-unknown-elf-objcopy",
            "-O",
            "binary",
            "-j",
            ".text",
            "-j",
            ".rodata",
            "-j",
            ".srodata",
            "-j",
            ".data",
            "-j",
            ".sdata",
            "-j",
            ".bss",
            elf_file,
            image_bin,
        ],
        check=True,
    )

    # 转换为十六进制文本格式（单一文件，同时用于 icache/dcache 初始化）
    convert_bin_to_txt(image_bin, os.path.join(output_dir, f"{base_name}.txt"))

    print(f"\nGenerated files:")
    print(f"  - {base_name}.txt (unified image)")

def convert_bin_to_txt(bin_file, txt_file):
    """将二进制文件转换为十六进制文本文件"""
    if not os.path.exists(bin_file) or os.path.getsize(bin_file) == 0:
        print(f"Warning: {bin_file} is empty or doesn't exist")
        with open(txt_file, 'w') as f:
            pass  # 创建空文件
        return
    
    with open(bin_file, 'rb') as f:
        data = f.read()
    
    with open(txt_file, 'w') as f:
        # 每 4 字节（32 位）转换为一行
        for i in range(0, len(data), 4):
            if i + 4 <= len(data):
                word = int.from_bytes(data[i:i+4], byteorder='little')
                f.write(f"{word:08x}\n")
            else:
                # 处理不足 4 字节的情况
                remaining = data[i:]
                word = int.from_bytes(remaining + b'\x00' * (4 - len(remaining)), 
                                     byteorder='little')
                f.write(f"{word:08x}\n")
    
    print(f"Converted {bin_file} -> {txt_file} ({len(data)} bytes)")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python extract.py <elf_file> <output_dir>")
        print("Example: python extract.py plus.elf workload/plus/")
        sys.exit(1)
    
    elf_file = sys.argv[1]
    output_dir = sys.argv[2]
    
    if not os.path.exists(elf_file):
        print(f"Error: {elf_file} not found")
        sys.exit(1)
    
    os.makedirs(output_dir, exist_ok=True)
    extract_sections(elf_file, output_dir)
