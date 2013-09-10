.DEFAULT_GOAL := font
.PHONY: font

install:
	@echo Install fontcusom at http://fontcustom.com/#installation

font:
	@fontcustom compile ./Icons -n fontcustom >/dev/null 2>&1
	@cp ./Icons/fontcustom/*.ttf ./Example/fontcustom.ttf
	@rm -rf ./Icons/fontcustom
	@echo Font created at ./Example/fontcustom.ttf
