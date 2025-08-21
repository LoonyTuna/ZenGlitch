# Variables
TEMPLATE = template.html
INPUT_MD = MANIFESTO.md
OUTPUT_HTML = index.html
IMAGES_DIR = images

ifeq ($(OS),Windows_NT)
	OPEN = start ""
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		OPEN = open
	else
		OPEN = xdg-open
	endif
endif

.PHONY: help
help:
	@echo "Available targets:"
	@echo ""
	@echo "  all        - Run build and check"
	@echo "  build      - Build HTML from markdown using pandoc"
	@echo "  check      - Open HTML page in browser"
	@echo ""
	@echo "Variables:"
	@echo "  TEMPLATE   = $(TEMPLATE)"
	@echo "  INPUT_MD   = $(INPUT_MD)"
	@echo "  OUTPUT_HTML= $(OUTPUT_HTML)"
	@echo "  IMAGES_DIR = $(IMAGES_DIR)"

.PHONY: all
all: build check

.PHONY: build
build:
	pandoc $(INPUT_MD) --output $(OUTPUT_HTML) --standalone --template=$(TEMPLATE)

.PHONY: check
check:
	$(OPEN) $(OUTPUT_HTML)
