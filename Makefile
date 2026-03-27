# Makefile for "The Empathetic Parent" LaTeX book
#
# Usage:
#   make          - build the PDF (default)
#   make clean    - remove generated auxiliary files
#   make distclean - remove all generated files including the PDF

MAIN    = book
LATEX   = pdflatex
BIBTEX  = bibtex
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

CHAPTERS = $(wildcard chapters/*.tex)

.PHONY: all clean distclean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(CHAPTERS)
	$(LATEX) $(LATEXFLAGS) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(LATEXFLAGS) $(MAIN)
	$(LATEX) $(LATEXFLAGS) $(MAIN)

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc \
	       $(MAIN).lof $(MAIN).lot $(MAIN).bbl $(MAIN).blg \
	       $(MAIN).fls $(MAIN).fdb_latexmk \
	       chapters/*.aux

distclean: clean
	rm -f $(MAIN).pdf
