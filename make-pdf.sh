#!/usr/bin/env bash
set -euo pipefail
latexmk -c -cd 00_Main/Main.tex
# latexmk -f -pdf -shell-escape -cd -interaction=nonstopmode -bibtex 00_Main/Main.tex
latexmk -f -pdf -shell-escape -cd -interaction=nonstopmode -bibtex -e '$makeglossaries = "makeglossaries %O %S";' -e 'add_cus_dep("glo", "gls", 0, "run_makeglossaries");' -e 'add_cus_dep("acn", "acr", 0, "run_makeglossaries");' -e 'sub run_makeglossaries { system("makeglossaries $_[0]"); }' 00_Main/Main.tex