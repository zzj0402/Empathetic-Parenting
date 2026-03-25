# Agent Instructions for "Empathetic Parenting"

## 1. Project Overview & Tone
- **Title**: *Empathetic Parenting: Raising Children with Empathy, Connection, and Love*
- **Author**: Zijing Zhang
- **Tone**: Compassionate, practical, and heavily grounded in scientific research (Attachment Theory, Neuroscience, Epigenetics, Polyvagal Theory). Keep the language accessible to everyday parents but maintain an authoritative, well-researched voice. Do not be overly casual or overly academic.

## 2. LaTeX Formatting & Structure
- **File Organization**: The root document is `book.tex`. Individual chapters are stored in the `chapters/` directory.
- **Quotes**: Begin each chapter with a relevant quote using the following format:
  ```latex
  \begin{quote}
  \itshape ``[Quote text]''\\
  \upshape --- [Author]
  \end{quote}
  ```
- **Sections**: Structure text thoughtfully using `\section` and `\subsection`.

## 3. Citations & References
- **BibTeX**: The book uses a robust, automated BibTeX citation system (`references.bib`) with the `natbib` package.
- **Commands**: **NEVER** hardcode inline citations. Always use:
  - `\citet{key}` for narrative citations (e.g., "As Ainsworth (1978) noted...").
  - `\citep{key}` for parenthetical citations (e.g., "...found in infants (Ainsworth, 1978).").
- If adding a new claim that requires scientific backing, ensure you add the corresponding entry to `references.bib`.

## 4. Custom Callout Environments (tcolorbox)
The `book.tex` defines custom graphical boxes. You should use these strategically to break up text and emphasize core concepts:

- **Key Insights**: Provide a concise summary of a section's core scientific findings or main takeaways. Placed at the end of a section.
  ```latex
  \begin{keyinsight}
  [Summary text describing the core concept.]
  \end{keyinsight}
  ```
- **Practice Exercises**: Provide actionable, real-world exercises for parents to try.
  ```latex
  \begin{practiceexercise}
  [Exercise instructions and context.]
  \end{practiceexercise}
  ```
- **Reflection Questions**: Placed at the very end of a chapter. Must contain an enumerated list of thought-provoking questions about the reader's own childhood and parenting approach.
  ```latex
  \begin{reflection}
  \begin{enumerate}
    \item [Question 1]
    \item [Question 2]
  \end{enumerate}
  \end{reflection}
  ```

## 5. Coding Style Guidelines
- **Line Breaks**: Try to place line breaks at natural sentence boundaries or punctuation marks in the `.tex` files. This makes Git tracking and diffs much cleaner.
- **Lists**: Rely on `\begin{itemize}` and `\begin{enumerate}` for lists. The preamble already customizes their spacing.
- **Special Characters**: Don't forget to escape special LaTeX characters (e.g., `\&`, `\%`). Em-dashes should be typed as `---`.
