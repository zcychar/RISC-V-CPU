# linker.ld
SECTIONS
{
    . = 0x0;
    .text : { *(.text) }
    .rodata : { *(.rodata) *(.srodata) }
    .data : { *(.data) *(.sdata) }
    .bss : { *(.bss) *(.sbss) }
}
