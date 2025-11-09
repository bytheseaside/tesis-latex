#!/usr/bin/env bash
set -euo pipefail

# Build the thesis PDF
# -pdf: generate PDF output
# -shell-escape: allow shell commands (needed for minted package)
# -cd: change to the source file's directory before compiling
latexmk -pdf -shell-escape -cd 00_Main/Main.tex

