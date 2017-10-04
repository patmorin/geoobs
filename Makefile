
ipefigs=$(wildcard figs/*.ipe)
slidefigs=$(wildcard figs/*.ipe)

geoobs.pdf : figs geoobs.tex geoobs.bib $(ipefigs)
	latexmk -pdf geoobs.tex

figs: $(ipefigs)
	make -C figs

clean :
	rm -f geoobs.pdf figs/*.pdf
