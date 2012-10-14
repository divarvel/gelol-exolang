all: slides.html

pdf: slides.pdf

slides.html: slides.md
	pandoc -t dzslides -o slides.html --template default.dzslides slides.md

slides.pdf: slides.md
	pandoc -t beamer slides.md -o slides.pdf
