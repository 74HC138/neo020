TARGET = "-m68020"
TOOLS = "$(CURDIR)/buildtools"

all: tools neo
	@echo "Done"

neo:
	@echo "-------------------------------------------------"
	@echo "building neocore"

	@echo "-------------------------------------------------"

clean:
	cd $(TOOLS); make clean
	@echo "all clean"

tools:
	@echo "-------------------------------------------------"
	@echo "building tools"
	cd $(TOOLS); make
	@echo "-------------------------------------------------"

commit:
	cd $(TOOLS); make commit

#$(V).SILENT:
