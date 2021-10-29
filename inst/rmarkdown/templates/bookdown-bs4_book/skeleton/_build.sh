#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::bs4_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
mv -f docs/_main.pdf docs/book.pdf

