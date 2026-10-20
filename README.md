# Empathetic Parenting

A LaTeX book titled **"Empathetic Parenting: Raising Children with Empathy, Connection, and Love"** by **Zijing Zhang**.

## Read & Download the Book (PDF)

- **View in Repository**: [`book.pdf`](book.pdf)
- **Download Latest Release**: [`book.pdf` (GitHub Releases)](https://github.com/zzj0402/Empathetic-Parenting/releases/latest/download/book.pdf)
- **Read Online (GitHub Pages)**: [Online Reader](https://zzj0402.github.io/Empathetic-Parenting/) | [Direct PDF Link](https://zzj0402.github.io/Empathetic-Parenting/book.pdf)

## Building the PDF

### Prerequisites

You need a TeX distribution installed:

- **Linux**: `sudo apt install texlive-full` (or `texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-bibtex-extra`)
- **macOS**: Install [MacTeX](https://www.tug.org/mactex/)
- **Windows**: Install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

### Build

```bash
make            # produces book.pdf
make clean      # remove auxiliary files
make distclean  # remove all generated files including book.pdf
```

Or manually with `pdflatex` and `bibtex`:

```bash
pdflatex book
bibtex book
pdflatex book
pdflatex book
pdflatex book   # resolves all cross-references and TOC page numbers
```

The output is [`book.pdf`](book.pdf).
