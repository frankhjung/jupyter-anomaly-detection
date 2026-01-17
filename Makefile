#!/usr/bin/make

.PHONY: clean cleanall
.SUFFIXES: .ipynb .html .pdf .tex .md
.DEFAULT: render

render:	 anomaly-detection.html

%.tex: %.ipynb
	@uv run jupyter nbconvert --execute --to latex --template article.tplx --output $@ $<

%.pdf: %.tex
	@pdflatex $<

%.html: %.ipynb
	@uv run jupyter nbconvert --execute --to html --output $@ $<

%.html : %.md
	@pandoc $< -o $@

clean:
	@$(RM) -rf *.aux *.out *.log *.bbl *.blg *.tex *_files/ *.png

cleanall: clean
	@$(RM) -rf *.html *.pdf
