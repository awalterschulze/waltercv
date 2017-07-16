#!/bin/bash
xelatex waltercv.tex
xelatex waltercv.tex
sed -e 's/documentclass\[\]/documentclass\[print\]/' waltercv.tex > waltercv-print.tex
xelatex waltercv-print.tex
xelatex waltercv-print.tex