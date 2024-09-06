SRC = $(wildcard *.tex)
PDFS = $(SRC:.tex=.pdf)

all: pdf

en: resume.pdf

zh_CN: resume-zh_CN.pdf

%.pdf: %.tex
	xelatex $<
	xelatex $<

ifeq ($(OS),Windows_NT)
  RM = cmd //C del
else
  RM = rm -f
endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf
