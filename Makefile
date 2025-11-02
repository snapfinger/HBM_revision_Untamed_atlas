# Makefile for LaTeX compilation with bibliography
# Usage: make or make pdf

MAIN = main
BIB = wileyNJD-AMA

.PHONY: pdf clean all

all: pdf

pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(BIB).bib
	pdflatex -interaction=nonstopmode $(MAIN).tex
	bibtex $(MAIN)
	pdflatex -interaction=nonstopmode $(MAIN).tex
	pdflatex -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.fdb_latexmk *.fls *.synctex.gz

cleanall: clean
	rm -f $(MAIN).pdf

