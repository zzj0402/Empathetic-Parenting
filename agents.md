# Agent Instructions for "Empathetic Parenting"

## 1. Project Overview & Tone
- **Title**: *Empathetic Parenting: Raising Children with Empathy, Connection, and Love*
- **Author**: Zijing Zhang
- **Tone**: Empathetic, practical, and heavily grounded in scientific research. Keep the language accessible to everyday parents but maintain well-researched voice. Ensure all explanations, examples, and advice adhere to the principles of Nonviolent Communication (NVC), focusing on observations, feelings, needs, and requests without judgment, blame, or evaluation.

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
- **Practice Exercises**: Provide actionable, real-world exercises for parents to try. Since the `practiceexercise` macro does not have a built-in title, you MUST logically separate it with a preceding `\section{Practice Exercise}`. Furthermore, exercises MUST be formatted as multiple-choice questions grouped strictly into sets of 3 per page, followed by their 3 concise corresponding paragraph explanations on the subsequent page (using `\vspace{\fill}` to balance the layout).
  ```latex
  \section{Practice Exercise}
  \begin{practiceexercise}
  \textbf{Multiple Choice Questions}
  \begin{enumerate}
    \item [Question 1...]
    \vspace{\fill}
    \item [Question 2...]
    \vspace{\fill}
    \item [Question 3...]
  \end{enumerate}
  \vspace{\fill}
  \newpage
  
  \textbf{Explanations for Questions 1--3}
  [Concise paragraph explanations for 1, 2, and 3]
  \vspace{\fill}
  \newpage
  \end{practiceexercise}
  ```
- **Reflection Questions**: Placed at the very end of a chapter. Must contain an enumerated list of exactly 9 thought-provoking questions about the reader's own childhood, their emotional triggers, and their unique parenting approach. **CRITICAL**: The 9 questions MUST be concise enough to fit entirely onto a single PDF page. You must use the `\small` font command and pass `[itemsep=0pt, parsep=0pt, topsep=0pt]` to the `enumerate` environment to compress vertical spacing.
  ```latex
  \section{Reflection Questions}
  \begin{reflection}
  \small
  \begin{enumerate}[itemsep=0pt, parsep=0pt, topsep=0pt]
    \item [Question 1]
    \item [Question 2]
    ...
    \item [Question 9]
  \end{enumerate}
  \end{reflection}
  ```

## 5. Coding Style Guidelines
- **Line Breaks**: Try to place line breaks at natural sentence boundaries or punctuation marks in the `.tex` files. This makes Git tracking and diffs much cleaner.
- **Lists**: Rely on `\begin{itemize}` and `\begin{enumerate}` for lists. The preamble already customizes their spacing.
- **Special Characters**: Don't forget to escape special LaTeX characters (e.g., `\&`, `\%`). Em-dashes should be typed as `---`.

## 6. Book Structure

To maintain consistency across the book, every chapter MUST adhere strictly to the following structural outline, modeled after Chapters 1 and 2:

1. **Chapter Title and Quote:**
   - Begin with `\chapter{[Chapter Title]}`.
   - Follow immediately with a relevant quote using the specified `\begin{quote}` block format (see Section 2).
   - Add `\newpage` if desired for pacing.

2. **Main Content Sections (`\section`):**
   - Each major topic must be encapsulated in a `\section{...}`.
   - **Section body:** Provide an in-depth discussion of the topic, heavily supported by scientific research (`\citep{}` and `\citet{}`).
   - Each section must have at least 9 scholar sources.
   - **Key Insight:** EVERY `\section` must conclude with a `\begin{keyinsight}` block that serves as a TLDR; a concise summary of the section's core scientific findings or main takeaways.

3. **End-of-Chapter Practice Exercises:**
   - Add exactly one `\section{Practice Exercise}` near the end of the chapter.
   - Open the `\begin{practiceexercise}` environment.
   - Provide **exactly 9 Multiple Choice Questions** grouped into sets of 3.
   - **Formatting strictness:**
     - Write `\textbf{Multiple Choice Questions}`.
     - Begin `\begin{enumerate}`.
     - List questions 1, 2, and 3, separated by `\vspace{\fill}`.
     - End the list, add `\vspace{\fill}`, and insert `\newpage`.
     - Write `\textbf{Explanations for Questions 1--3}` followed by the 3 concise paragraph explanations separated by `\vspace{\fill}`.
     - Insert `\newpage`.
     - Repeat this exact pattern for questions 4--6 and 7--9 (using `\setcounter{enumi}{3}` and `\setcounter{enumi}{6}` respectively to maintain numbering).
   - Close the `\end{practiceexercise}` environment and add `\newpage`.
   - Make sure each set of 3 questions fit on a single page in the PDF output.

4. **End-of-Chapter Reflection Questions:**
   - Add exactly one `\section{Reflection Questions}` at the very end of the chapter.
   - Open the `\begin{reflection}` environment.
   - Use the `\small` font command.
   - Use `\begin{enumerate}[itemsep=0pt, parsep=0pt, topsep=0pt]` to ensure all questions fit on a single PDF page.
   - Provide an enumerated list of **exactly 9 thought-provoking questions** about the reader's own childhood, their emotional triggers, and their unique parenting approach.
   - Close the `\end{reflection}` environment.