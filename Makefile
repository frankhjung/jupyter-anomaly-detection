#!/usr/bin/make

.PHONY: clean cleanall
.SUFFIXES: .ipynb .html .pdf .tex .md
.DEFAULT: render

render:	 anomaly-detection.html

%.tex: %.ipynb
	@jupyter nbconvert --exec --to latex --template article.tplx --output $@ $<

%.pdf: %.tex
	@pdflatex $<

%.html: %.ipynb
	@jupyter nbconvert --exec --to html --output $@ $<

%.html : %.md
	@pandoc $< -o $@

clean:
	@$(RM) -rf *.aux *.out *.log *.bbl *.blg *.tex *_files/ *.png

cleanall: clean
	@$(RM) -rf *.html *.pdf
