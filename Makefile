
ipefigs=$(wildcard figs/*.ipe)
slidefigs=$(wildcard figs/*.ipe)

all: geoobs.pdf bent.pdf

geoobs.pdf : figs geoobs.tex geoobs.bib $(ipefigs)
	latexmk -pdf geoobs.tex

bent.pdf : figs bent.tex geoobs.bib $(ipefigs)
	latexmk -pdf bent.tex

figs: $(ipefigs)
	make -C figs

clean :
	rm -f geoobs.pdf figs/*.pdf
