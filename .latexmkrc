# LaTeXmk configuration for automatic compilation
# This ensures pdflatex -> bibtex -> pdflatex -> pdflatex sequence

$pdf_mode = 1;              # Use PDF mode (pdflatex)
$postscript_mode = 0;       # Disable postscript mode
$dvi_mode = 0;              # Disable DVI mode

# Use pdflatex
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Enable automatic bibliography processing
$bibtex_use = 2;            # Run bibtex automatically
$makeindex = '';            # No makeindex needed

# Set bibliography file (matches your main.tex)
$bibtex_bib = 'wileyNJD-AMA.bib';

# Maximum number of pdflatex runs (ensures references resolve)
$max_repeat = 5;

# Cleanup extensions
$clean_ext = 'fdb_latexmk fls synctex.gz';

