Alternative thesis template. Optimized for FNSPE CTU, but could be used anywhere else just by modifying university name etc.

It is not my piece of work and therefore I do not have any author rights.

For other CTU templates for theses, see
- [Tomas Hejda's template for CTU theses](https://github.com/tohecz/ctuthesis), 
- [KSI FNSPE CTU template](https://ksi.fjfi.cvut.cz/sablona-zaverecne-prace), 
- [Milos Kozak's template for CTU FEE](https://www.overleaf.com/latex/templates/sablona-pro-psani-disertacni-prace-na-cvut-fel/ptpvbxhsjdmg), 
- [Ondrej Guth's template for CTU FIT](https://www.overleaf.com/latex/templates/fit-ctu-dissertation-template/bjrwpqfztbjf). 


# Download

## Overleaf
- New project -> Templates - View all -> find "ctuThesis2" or [use link](https://www.overleaf.com/latex/templates/ctuthesis2/kbpgrdmtmggx)

## Linux
- Green button "Code" --> Download ZIP

```
cd my_dir
7z x that_downloaded_ZIPfile
```

- OR second option: 

```
cd my\dir
git clone https://github.com/rzehumat/ctuThesis2.git
rm -rf .git
```

## Windows
- Green button `Code` -> Download ZIP
    - unzip it
 
# Working with the teplate (manual for beginners)
> KISS: Keep it simple, stupid.
> Stay DRY.

1. edit _config.tex_ according to your thesis assignment
2. (optional) in case of cz/sk woman, check correct suffixes (e.g. in "Prohlášení")
3. start writing
    - I recommend writing each chapter in separate file (in order to produce PDF fast)
    - add file names to _main.tex_ by command `\\include` (filename without suffix _.tex_)
    - for the sake of readability, it's recommended to store chapter source files in _kapitoly\/_
    - all packages to be imported are located in _packages.tex_

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

# Useful tools
> Do not hurt yourself.
1. [Detexify](https://detexify.kirelabs.org/classify.html) -- image recognition -- searches LaTeX commands for handwritten symbol.
2. [TablesGenerator](https://www.tablesgenerator.com/) converts Excel table into LaTeX one.
3. [CitacePRO](https://www.citacepro.com/) (access via CTU account) generates BibLaTeX entries from ISBN, DOI or other identificator.
4. [Mendeley](https://www.mendeley.com) -- citation manager software by Elsevier, provides functionality similar to CitacePRO.
5. `Export` button at Google Scholar or ScienceDirect etc. -- automatically generates BibTeX entries.


# Known issues
- Woman settings not set
- definice, věta, důkaz
- style of acronyms
- better math, better units
- zminit, že musí spustit biber na literaturu a že zobrazuje jen citovanou
- zminit, že je optimalizovane pro pdflatex
- department acronyms incomplete
