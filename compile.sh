#!/bin/bash

# O26 paper compilation script
# Compiles SpectralO26.tex with bibliography support

set -e

TEX_FILE="tex/SpectralO26.tex"
OUTPUT_DIR="out"
MAIN_NAME="SpectralO26"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}=== Compiling O26 paper ===${NC}"

if [ ! -d "$OUTPUT_DIR" ]; then
    echo -e "${YELLOW}Creating output directory: $OUTPUT_DIR${NC}"
    mkdir -p "$OUTPUT_DIR"
fi

export TEXINPUTS=".:./tex:${TEXINPUTS}"

echo -e "${GREEN}Step 1/4: First pdflatex run${NC}"
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
    -output-directory="$OUTPUT_DIR" "$TEX_FILE"

echo -e "${GREEN}Step 2/4: Running bibtex${NC}"
cd "$OUTPUT_DIR"
BSTINPUTS="../tex:${BSTINPUTS}" BIBINPUTS="../tex:${BIBINPUTS}" bibtex "$MAIN_NAME"
cd ..

echo -e "${GREEN}Step 3/4: Second pdflatex run${NC}"
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
    -output-directory="$OUTPUT_DIR" "$TEX_FILE"

echo -e "${GREEN}Step 4/4: Third pdflatex run${NC}"
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
    -output-directory="$OUTPUT_DIR" "$TEX_FILE"

if [ -f "$OUTPUT_DIR/$MAIN_NAME.pdf" ]; then
    echo -e "${GREEN}=== Compilation successful ===${NC}"
    ls -lh "$OUTPUT_DIR/$MAIN_NAME.pdf"
else
    echo -e "${RED}=== Compilation failed ===${NC}"
    exit 1
fi
