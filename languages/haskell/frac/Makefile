TEXER       =pdflatex
OUTPUT_DIR  =output/
OUTPUT_FLAG =-output-directory $(OUTPUT_DIR)
BIBC        =bibtex
TARGET      =frac
THISDIR     =$(pwd)

all: mkout pdf

pdf:
	$(TEXER) $(OUTPUT_FLAG) core.tex 
	# cp -u mybib.bib $(OUTPUT_DIR)
	# cd $(OUTPUT_DIR); $(BIBC) core;
	$(TEXER) $(OUTPUT_FLAG) core.tex
	mv $(OUTPUT_DIR)core.pdf $(TARGET).pdf

double: pdf pdf

mkout:
	mkdir -p $(OUTPUT_DIR)

clean:
	cd $(OUTPUT_DIR); rm -f *.log *.aux *.pdf *.toc *.blg *.lof *.lol *.lot *.bbl

