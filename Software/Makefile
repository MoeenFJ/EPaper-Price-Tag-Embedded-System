
TARGET ?= einkfirm
OBJS ?= $(TARGET).c

MAKE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_DIR := $(dir $(MAKE_PATH))

C_FLAGS = -O0 -march=rv32imzicsr -mabi=ilp32 -Wa,-march=rv32imzicsr -Wextra -Wall -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function -fdata-sections -ffunction-sections -fdiagnostics-color=always
ASM_FLAGS = -O0 -march=rv32imzicsr -mabi=ilp32 -Wa,-march=rv32imzicsr -Wextra -Wall -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function -fdata-sections -ffunction-sections -fdiagnostics-color=always -DBOOT_M

.PHONY:all
all: clean mkdir build $(TARGET)

.PHONY: build
build: $(TARGET)
$(TARGET): $(OBJS)
	riscv64-elf-gcc $(ASM_FLAGS) -o obj/crt0.boot_M.S.o -c boot/crt0.boot_M.S
	riscv64-elf-gcc $(C_FLAGS) -o obj/$(TARGET).c.s -S $(TARGET).c
	riscv64-elf-gcc -O0 -march=rv32imzicsr -mabi=ilp32 -Wa,-march=rv32imzicsr -Wextra -Wall -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function -fdata-sections -ffunction-sections -fdiagnostics-color=always -Wl,-headerpad_max_install_names -Tboot/link.riscv.ld -nostartfiles -Wl,--gc-sections -lm obj/$(TARGET).c.s obj/crt0.boot_M.S.o -o $(TARGET).elf
	riscv64-elf-objcopy -O verilog $(TARGET).elf $(TARGET).hex
	cp $(TARGET).hex ../Sim/$(TARGET).hex
	riscv64-elf-objdump -d $(TARGET).elf > $(TARGET).s
	riscv64-elf-objdump -d -j .rodata $(TARGET).elf >> $(TARGET).s

.PHONY: mkdir
mkdir: 
	mkdir obj

.PHONY: clean
clean:
	rm -rf $(TARGET)
	rm -rf $(TARGET).s
	rm -rf obj
