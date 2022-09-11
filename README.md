Alternative template for thesis in LaTeX. Optimized for FNSPE CTU, but could be used anywhere else just by modifying university name etc.

This is not my original work -- it has been created by rewriting the template from KSI FNSPE (link below)

This template is not an official one, there are more available at CTU. Ask your supervisor, which one should you use! For other CTU templates for theses, see
- [Tomas Hejda's template for CTU theses](https://github.com/tohecz/ctuthesis), 
- [KSI FNSPE CTU template](https://ksi.fjfi.cvut.cz/sablona-zaverecne-prace), 
- [Milos Kozak's template for CTU FEE](https://www.overleaf.com/latex/templates/sablona-pro-psani-disertacni-prace-na-cvut-fel/ptpvbxhsjdmg), 
- [Ondrej Guth's template for CTU FIT](https://www.overleaf.com/latex/templates/fit-ctu-dissertation-template/bjrwpqfztbjf). 


# Download and installation

## Overleaf
- Download this GitHub project by button `Code -> Download ZIP`
- In Overleaf, log in, select `New Project` -> `Upload Project` and select the `zip` file

Remark: Currently available template in the Overleaf Template Gallery is outdated and will be updated soon.

## Linux
- Green button "Code" --> Download ZIP

```
cd my_dir
7z x that_downloaded_ZIPfile
```

- OR second option: 

```
cd my_dir
git clone https://github.com/rzehumat/ctuThesis2.git
rm -rf .git
```

## Windows
- Green button `Code` -> Download ZIP
    - unzip it

 
# Writing

1. update `main.tex` with values specific to your assignment
  - currently available languages are Czech and English; Slovak is to be added
  - if your language is Czech, fill in the translations into `*EN` commands, if your language is English, comment them out
2. start writing
    - I recommend writing each chapter in separate file (in order to produce PDF fast)
    - add file names to `main.tex` by command `\include` (filename without suffix `.tex`)
    - for the sake of readability, it's recommended to store chapter source files in `chapters/`
    - all packages to be imported are located in `template/packages.tex`
        - feel free to add your packages to `template/packages.tex` or to `main.tex`, whatever fits you better
    - there are some special commands defined in `template/commands.tex` (list below), feel free to use them / modify to make your writing easier
    - add your bibliography entries in `BibTeX` or `BibLaTeX` format to `ref.bib`

# Compilation
- Overleaf -- just use the `Recompile` button
- Linux -- `pdflatex` for the document and `biber` for bibliography are recommended
    - use:
```
pdflatex main
biber main
pdflatex main
```
    - `latexmk` is always the best option, but it does not work here (to be fixed)

# Special commands
There are some own commands or aliases to make LaTeX syntax shorter or to reduce the code (DRY principle). They are located in _commands.tex_.

## Figures
- `\pic` is for figure; by default it's set to have constant width `0.8\textwidth` and placement `H`
    - picture source is expected to be in _img_ folder
```
\pic{examplePicture.png}{Shorter decription to appear in the List of Figures.}{Description for caption -- could have any length. BlaBlaBlaBla.}
```
- `\dpic` is for 2 figures side-by-side

- `\tpic` is for 3 figures side-by-side

## Equations
- `\eq` is alias for `equation` environment, i.e.

```
\eq{
   a = b
}
```

- is the same as

```
\begin{equation}
   a = b
\end{equation}
```

- `\eqa` is alias for `\align` environment -- works the same as `\eq`

## Math definition-theorem-proof
- `\mdef{definedTerm}{defLabel}{definitionItself}` is alias for 

```
\begin{define}[definedTerm]
	\label{mdef:defLabel}
	definitionItself
\end{define}
```

- `\mtheor{theoremName}{theoremLabel}{theoremItself}` is alias for 

```
\begin{theorem}[theoremName]
	\label{mtheor:theoremLabel}
	theoremItself
\end{theorem}
```

- `\mlemma{lemmaName}{lemmaLabel}{lemmaItself}` is alias for 

```
\begin{lemma}[lemmaName]
	\label{mlemma:lemmaLabel}
	lemmaItself
\end{lemma}
```

- `\mcomm{commentName}{commentLabel}{commentItself}` is alias for 

```
\begin{comment}[commentName]
	\label{mcomm:commentLabel}
	commentItself
\end{comment}
```

- `\mex{exampleLabel}{exampleItself}` is alias for 

```
\begin{example}
	\label{mex:exampleLabel}
	exampleItself
\end{example}
```

## Code listing
Easiest way is by `\lstinputlisting` command.

```
\lstinputlisting[language=Octave]{BitXorMatrix.m}
```

For additional references (e.g. color settings, range of rows to list etc.) see [Overleaf Manual](https://www.overleaf.com/learn/latex/code_listing). 

## Aliases
- `\tb` is alias for `\textbf`
- `\ti` is alias for `\textit`
- `\cit` is alias for `\compactitem`
- `\cen` is alias for `\compactenum`

## Czech stuff
- style of references set to ISO-690
- for czech style of quotation marks (9966) use `\uv{textInsideQuotationMarks}`
 

# Useful tools
> Make your life simpler
1. [Detexify](https://detexify.kirelabs.org/classify.html) -- image recognition -- searches LaTeX commands for handwritten symbol.
2. [TablesGenerator](https://www.tablesgenerator.com/) converts Excel table into LaTeX one.
3. [CitacePRO](https://www.citacepro.com/) (access via CTU account) generates BibLaTeX entries from ISBN, DOI or other identificator.
4. [Mendeley](https://www.mendeley.com) -- citation manager software by Elsevier, provides functionality similar to CitacePRO.
5. `Export` button at Google Scholar or ScienceDirect etc. -- automatically generates BibTeX entries.

