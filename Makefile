all: slides.html

slides.html: slides.md
	pandoc -t slidy -o slides.html --template default.slidy slides.md
