##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.tdo *.cb *.cb2 *.lot *.soc *

pdflatex: main.tex
	pdflatex  --shell-escape --synctex=1 main.tex
	makeglossaries main
	bibtex main
	pdflatex --shell-escape --synctex=1 main.tex
	pdflatex --shell-escape --synctex=1 main.tex
	pdflatex --shell-escape --synctex=1 main.tex
clean:
	git clean -x -f -e main.pdf

fast: main.tex
	pdflatex --synctex=1 -interaction batchmode main.tex
	makeglossaries main
	bibtex main
	pdflatex --synctex=1 -interaction batchmode main.tex
	pdflatex --synctex=1 -interaction batchmode main.tex
	pdflatex --synctex=1 -interaction batchmode main.tex
	
hax: main.tex
	pdflatex --synctex=1 -interaction scrollmode main.tex
	makeglossaries main
	bibtex main
	pdflatex --synctex=1 -interaction scrollmode main.tex
	pdflatex --synctex=1 -interaction scrollmode main.tex
	pdflatex --synctex=1 -interaction scrollmode main.tex
	