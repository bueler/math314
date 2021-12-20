all:

schedule.pdf: schedule.tex
	pdflatex schedule.tex
	pdflatex schedule.tex

syllabus.pdf: syllabus.tex
	pdflatex syllabus.tex
	pdflatex syllabus.tex

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.synctex.gz
	rm -f schedule.pdf syllabus.pdf
