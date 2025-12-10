#!/usr/bin/env bash
set -euo pipefail
latexmk -c -cd 00_Main/Main.tex
latexmk -f -pdf -shell-escape -cd -interaction=nonstopmode -bibtex 00_Main/Main.tex
