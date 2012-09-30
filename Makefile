all: slides.html

slides.html: slides.md
	pandoc -t dzslides -o slides.html --template default.dzslides slides.md
