.PHONY: view all clean

vypracovane.pdf: vypracovane.tex
	pdfcslatex -interaction=nonstopmode vypracovane.tex
	pdfcslatex -interaction=nonstopmode vypracovane.tex
	pdfcslatex -interaction=nonstopmode vypracovane.tex

all: vypracovane.pdf
view: all
	xdg-open vypracovane.pdf


clean:
	rm *.aux *.log *.out *.toc vypracovane.pdf
