#!/bin/bash
set -xe
xelatex cv.tex
biber cv
xelatex cv.tex
sed -e 's/documentclass\[\]/documentclass\[print\]/' cv.tex > cv-print.tex
xelatex cv-print.tex
biber cv-print
xelatex cv-print.tex