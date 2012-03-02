# Makefile for rebuilding the constitution of the Hacklab

PDFLATEX = pdflatex

all: hacklab_constitution.pdf hacklab_procedures.pdf

hacklab_constitution.pdf: hacklab_constitution.tex
	while ($(PDFLATEX) $< ; \
	grep -q "Rerun to get cross" $(basename $<).log ) do true ; \
	done

hacklab_procedures.pdf: hacklab_procedures.tex
	while ($(PDFLATEX) $< ; \
	grep -q "Rerun to get cross" $(basename $<).log ) do true ; \
	done

