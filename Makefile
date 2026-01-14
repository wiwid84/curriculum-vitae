FILES=cv.tex
FILE=cv

pdf: $(FILES)
	pdflatex $(FILES)
	pdflatex $(FILES)
	#acroread $(FILE).pdf
	#evince-previewer $(FILE).pdf &
	xpdf $(FILE).pdf &

latex:
	latex $(FILE).tex
	latex $(FILE).tex
	dvips $(FILE).dvi
	ps2pdf $(FILE).ps
	#evince-previewer $(FILE).pdf
	

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *.ps
