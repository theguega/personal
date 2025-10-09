# Typst build automation
# Usage:
#   make all        -> build all typst files
#   make resume     -> build only resume PDFs
#   make cover      -> build only cover letters
#   make clean      -> remove all generated PDFs

TYPST = typst
SRC_DIRS = resume cover-letter
TYP_FILES = $(wildcard $(SRC_DIRS)/*.typ)
PDFS = $(TYP_FILES:.typ=.pdf)

all: $(PDFS)

resume: $(wildcard resume/*.typ)
	@echo "📄 Building resume PDFs..."
	@for f in $^; do $(TYPST) compile $$f; done

cover: $(wildcard cover-letter/*.typ)
	@echo "📄 Building cover letter PDFs..."
	@for f in $^; do $(TYPST) compile $$f; done

%.pdf: %.typ
	@echo "🔧 Compiling $< -> $@"
	@$(TYPST) compile $<

clean:
	@echo "🧹 Cleaning generated PDFs..."
	@find $(SRC_DIRS) -name '*.pdf' -delete
