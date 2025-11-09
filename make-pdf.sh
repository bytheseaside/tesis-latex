#!/usr/bin/env bash
set -euo pipefail
latexmk -c -cd 00_Main/Main.tex
latexmk -pdf -shell-escape -cd -interaction=nonstopmode 00_Main/Main.tex
