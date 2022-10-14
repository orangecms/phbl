LINKER ?= gld

build:
	echo /dev/null | cpio -o > foo.cpio
	CARGO_TARGET_X86_64_OXIDE_NONE_ELF_LINKER=$(LINKER) \
		cargo xtask build --cpioz $(PWD)/foo.cpio

disasm:
	echo /dev/null | cpio -o > foo.cpio
	CARGO_TARGET_X86_64_OXIDE_NONE_ELF_LINKER=$(LINKER) \
		cargo xtask disasm --cpioz $(PWD)/foo.cpio
