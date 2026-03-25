# Empathetic-Parenting

A LaTeX book titled **"The Empathetic Parent: Raising Children with Compassion, Connection, and Confidence"**.

## Book Structure

```
book.tex            ← main LaTeX file (entry point)
chapters/
  preface.tex       ← Preface
  chapter01.tex     ← Ch 1: What Is Empathetic Parenting?
  chapter02.tex     ← Ch 2: Understanding Your Child's Emotional World
  chapter03.tex     ← Ch 3: The Art of Active Listening
  chapter04.tex     ← Ch 4: Emotion Coaching
  chapter05.tex     ← Ch 5: Setting Empathetic Limits
  chapter06.tex     ← Ch 6: Nonviolent Communication with Children
  chapter07.tex     ← Ch 7: Empathetic Parenting Through Developmental Stages
  chapter08.tex     ← Ch 8: The Regulated Parent
  chapter09.tex     ← Ch 9: Building Connection: Rituals, Play, and Presence
  chapter10.tex     ← Ch 10: Raising Emotionally Intelligent Children
  conclusion.tex    ← Conclusion
  appendix.tex      ← Appendix: Recommended Resources
Makefile            ← build automation
```

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
