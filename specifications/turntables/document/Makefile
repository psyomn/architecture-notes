TARGET      =turntables
TEXER       =pdflatex
OUTPUT_DIR  =output/
OUTPUT_FLAG =-output-directory $(OUTPUT_DIR)
BIBC        =bibtex
THISDIR     =$(pwd)

all: pdf

pdf:
	mkdir -p output
	$(TEXER) $(OUTPUT_FLAG) core.tex 
	cd $(OUTPUT_DIR); $(BIBC) core; cd ..
	$(TEXER) $(OUTPUT_FLAG) core.tex
	mv $(OUTPUT_DIR)core.pdf $(TARGET).pdf

double: pdf pdf

clean:
	cd $(OUTPUT_DIR); rm -f *.log *.aux *.pdf *.toc *.blg *.lof *.lol *.lot *.bbl

