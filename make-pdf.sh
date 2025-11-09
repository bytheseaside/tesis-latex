#!/usr/bin/env bash
set -euo pipefail
latexmk -pdf -shell-escape -cd 00_Main/Main.tex

