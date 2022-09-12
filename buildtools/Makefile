VASM_URL = http://www.ibaug.de/vbcc/vbcc_linux_x64.tar.gz

all: romsplit vasm
	@echo "buildtools fully build"

clean:
	@echo "cleaning tools"
	@cd fsbuilder; make clean
	@cd romsplit; make clean
	@cd upload; make clean
	@echo "tools clean"

romsplit: git
	@echo "making romsplit"
	@cd romsplit; make

vasm:
	@echo "making vasm"
	@if ! test -f vbcc*.tar.gz; then echo "donwloading vasm"; wget $(VASM_URL); fi
	@if ! test -d vbcc; then echo "uncompressing vasm"; tar -xzf vbcc*.tar.gz; fi

git:
	@if ! test -d romsplit; then git clone https://github.com/74HC138/romsplit.git; fi

commit:
	@echo "-------------------------------------------------"
	@echo "clearing out buildtools"
	@if test -f vbcc*.tar.gz; then rm vbcc*.tar.gz; echo "  removed vbcc archive"; fi
	@if test -d vbcc; then rm -rf vbcc; echo "  removed vbcc"; fi
	@if test -d romsplit; then rm -rf romsplit; echo "  removed romsplit"; fi
	@echo "buildtools is pristine"

#$(V).SILENT:
