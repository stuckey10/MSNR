DOCNAME= 09_GNU_GDB_debager_Pantelić_Cvetkoski_Ristanović_Stamenić

all: sem

.PHONY: clean

sem:
	pdflatex $(DOCNAME).tex
	bibtex $(DOCNAME).aux 
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

view: sem
	okular $(DOCNAME).pdf &

clean:
	rm *.blg *.bbl *.aux *.log *.out *.toc *.pdf
