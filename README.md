# MIT Thesis template

Scott W Olesen - ([homepage](http://www.scottolesen.com))

This is the source code for my PhD thesis. It's designed for an MIT Course 20 thesis.
It might be adaptable for other departments.

## Where this stuff came from
I got this template from [here](http://web.mit.edu/thesis/tex). I modified some of the files,
removing comments and rewriting the readme.

## The files here and what they do

### Overview
I typeset my thesis by writing some information directly in LaTeX, which is in the `.tex` files.
I also wholesale included some `.pdf` files (in the three subfolders) because they were either
typeset in other LaTeX documents (and I didn't want to transfer them) or they were typeset in
Word (and I wasn't interested in manually transcribing and correcting them).

When you put everything together, it should come out like the `expected-output.pdf`, which is
the thesis I submitted to MIT.

### The front matter
This is where the template really shines. It's confusing how to typeset
all those pages.

- The abstract of the thesis, in plain text, goes into `abstract.tex`. It's wise to keep another copy of this file that has no linebreaks, because you'll be asked to cut-and-paste the abstract a few times during the submission process.
- `contents.tex` says how the Table of Contents should be typeset. If you want a list of figures or something like that, it will also go in here.
- `cover.tex` contains a lot of information: the title of the thesis, your name, etc.
- `main.tex` is where you can include packages, change the formatting of the thesis, and specify what files (i.e., the chapters, see below) will go into the document.

### The main body
The main body of the thesis goes in the `.tex` files. I put each chapter
into its own file:

- Chapter 1 in `chap1.tex`
- Chapter 2 in `chap2.tex`
- Appendix A in `appa.tex`

and so forth.

### Including pdfs
You'll see that my middle chapters have many pages but a short LaTeX file: most of their
content comes from pdfs that are included using the `\includepdf` command. I had to fiddle
with the `scale=` option to make sure they the pages fit the library's margin requirements
and I changed the `pagecommand=` option to make sure that the monolithic, continuous
numbering was present on all pages.

The pdfs I included are in the subfolders `texmex`, `lake`, and `fmt`.

### Including images
The pdfs I included were mostly the manuscript files from submitting the papers, which means
that the figures were kept separate. I therefore put the figures and their captions directly
into the LaTeX chapter files. Those figures are mostly in the subfolders mentioned above.

### Bibliography
The bibliography information is in `main.bib`, which is a
[BibTex](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management) file.
All the citations that you will reference in the TeX files go in there.

The file `biblio.tex` contains the information about how to typeset
the bibliography. It is the last "chapter" in the thesis.

### The other stuff
The style files `lgrind.sty` and `mitthesis.cls` help make the magic of the template happen.
I didn't mess with these.


## How to use this

1. Figure out what your chapters are going to be. Write them in LaTeX, including pdfs as you need.
2. Redo the front matter stuff in `contents.tex`, `cover.tex`, and `main.tex`.
3. Change any packages or formatting in `main.tex`.
4. Actually make the document using the `Makefile`, which requires [latexmk](https://www.ctan.org/pkg/latexmk/?lang=en). Running `make` will make the document, `make view` should open it with a viewer, and `make clean` should clean up anything made from the source files.
5. Consider putting it under version control, e.g., with [git](https://git-scm.com/).

## Help!
You can email `thesis@mit.edu`.
