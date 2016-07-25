PAPER = paper
TEX = $(wildcard *.tex)
BIB = refs.bib
FIGS = $(wildcard figs/*)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
