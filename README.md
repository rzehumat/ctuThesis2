Alternative thesis template. Optimized for FNSPE CTU, but could be used anywhere else just by modifying university name etc.

It is not my piece of work and therefore I do not have any author rights.

# Download

## Overleaf
- It's expected to appear in the Overleaf Gallery soon (already submitted, now wainting for them to publish it)
- New project -> Temlates - View all -> find "ctuThesis2"

## Linux
- Green button "Code" -> Download ZIP
    - cd _my\_dir_
    - 7z x _that\_downloaded\_ZIPfile_
- OR second option: 
    - cd _my\_dir_
    - git clone https://github.com/rzehumat/ctuThesis2.git
    - rm -rf _.git_

## Windows
- Green button "Code" -> Download ZIP
    - unzip it
 
# Working with the teplate (manual for beginners)
1. edit _config.tex_ according to your thesis assignment
2. (optional) in case of cz/sk woman, check correct suffixes (e.g. in "Prohlášení")
3. start writing
    - I recommend writing each chapter in separate file (in order to produce PDF fast)
    - add file names to _main.tex_ by command _\\include_ (filename without suffix _.tex_)
    - for the sake of readability, it's recommended to store chapter source files in _kapitoly\/_
    - all packages to be imported are located in _packages.tex_

# Special commands
There are some own commands or aliases to make LaTeX syntax shorter or to reduce the code (DRY principle). They are located in _commands.tex_.

## Figures
- _\\pic_ is for figure; by default it's set to have constant width _0.8\\textwidth_ and placement _H_
    - picture source is expected to be in _img_ folder
> \\pic{examplePicture.png}{Shorter decription to appear in the List of Figures.}{Description for caption -- could have any length. BlaBlaBlaBla.}

- _\\dpic_ is for 2 figures side-by-side

- _\\tpic_ is for 3 figures side-by-side

## Equations
- _\\eq_ is alias for _equation_ environment, i.e.
    > \\begin{equation}
    >    a = b
    > \\end{equation}
    - is the same as
    > \\eq{
    >    a = b
    > }

- _\\eqa_ is alias for _\\align_ environment -- works the same as _\\eq_

## Aliases
- _\\tb_ is alias for _\\textbf_
- _\\ti_ is alias for _\\textit_
- _\\cit_ is alias for _\\compactitem_
- _\\cen_ is alias for _\\compactenum_




# Known issues
- Woman settings not set
- definice, věta, důkaz
- style of acronyms
- better math, better units
- zminit, že musí spustit biber na literaturu a že zobrazuje jen citovanou
- zminit, že je optimalizovane pro pdflatex
- department acronyms incomplete
