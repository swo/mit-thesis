main:
	latexmk --pdf main

view:
	open main.pdf

clean:
	latexmk -C
