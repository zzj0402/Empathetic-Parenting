# Empathetic-Parenting

A LaTeX book titled **"The Empathetic Parent: Raising Children with Compassion, Connection, and Confidence"**.

## Building the PDF

### Prerequisites

You need a TeX distribution installed:

- **Linux**: `sudo apt install texlive-full` (or `texlive-latex-extra`)
- **macOS**: Install [MacTeX](https://www.tug.org/mactex/)
- **Windows**: Install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

### Build

```bash
make          # produces book.pdf
make clean    # remove auxiliary files
make distclean  # remove all generated files including book.pdf
```

Or manually with `pdflatex`:

```bash
pdflatex book.tex
pdflatex book.tex   # run twice for cross-references and TOC
pdflatex book.tex   # run a third time to resolve all references
```

The output is `book.pdf`.
