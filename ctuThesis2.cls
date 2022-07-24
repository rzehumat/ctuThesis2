\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ctuThesis2}
% inherit from book class
\LoadClass{book}

% usepackage stuff
\input{template/packages.tex}

% class language options
\input{template/lngopt_cz.tex}
\input{template/lngopt_en.tex}

% other options are assumed to be related to book package
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

% bibliography list
\addbibresource{ref.bib}

\newcommand{\stdindent}{\setlength{\parindent}{2em}}
\newcommand{\stdskip}{\setlength{\parskip}{0em}}

\pagenumbering{arabic} 

% Depth of table of contents (ToC) (2 is RECOMMENDED, other are believed to be confusing and poorly arranged!
% 0 = only parts and chapters are included in ToC
% 1 = parts, chapters, sections
% 2 = parts, chapters, sections, subsections
% 3 = parts, chapters, sections, subsections, subsubsections
\setcounter{tocdepth}{2}

% Margins 
\topmargin=-10mm      % horní okraj trochu menší
\textwidth=150mm      % šířka textu na stránce
\textheight=250mm     % "výška" textu na stránce

% Font size
\renewcommand\cftchapfont{\small\bfseries}
\renewcommand\cftsecfont{\footnotesize}
\renewcommand\cftsubsecfont{\footnotesize}

\renewcommand\cftchappagefont{\small\bfseries}
\renewcommand\cftsecpagefont{\footnotesize}
\renewcommand\cftsubsecpagefont{\footnotesize}

% Spacing
\frenchspacing          
\widowpenalty=1000      
\clubpenalty=1000       
\brokenpenalty=1000     

% aliases and own commands
\input{template/commands.tex}

\newcommand{\logoCVUT}{\includegraphics{img/symbol_cvut_konturova_verze_cb.pdf}} 

\renewcommand{\maketitle}{
  \thispagestyle{empty}
  
  \begin{center}
  	{\LARGE
  		\skola\par
  		\fakulta
  	}
      \vspace{10mm}
  
      \begin{tabular}{c}
  		\tb{\katedra} \\[3pt]   
  		\tb{\AreaWord: \obor}\\
      \end{tabular}
  
     \vspace{10mm} \logoCVUT \vspace{15mm} 
  
     {\huge \tb{\@title}\par}
     \vspace{5mm}   
     
     \vspace{15mm}
     {\Large \MakeUppercase{\druh}}
  
     \vfill
     {\large
      \begin{tabular}{ll}
      \AuthorWord: & \@author\\
      \SupervisorWord: & \vedouci\\
      \YearWord: & \Year 
      \end{tabular}
     }
  \end{center}
  
  \clearpage{\pagestyle{empty}\cleardoublepage} % prázdná stránka za tou "titulní", bez čísla
}

\newcommand{\includeAssignment}{
  \newpage
  \thispagestyle{empty}
  
  \includepdf[pages={1}]{img/\skenZadaniPredni}
  \includepdf[pages={1}]{img/\skenZadaniZadni}
}

\newcommand{\makeProclamation}{
  \newpage 
  \thispagestyle{empty} 
  
  ~
  \vfill 
  
  \tb{\DeclarationWord} 
  
  \vspace{1em} 
  \prohlaseni
  
  \vspace{2em}  
  \hspace{-0.5em}\begin{tabularx}{\textwidth}{X c} 
  \inTownDay .................... &........................................ \\	
  	& \@author
  \end{tabularx}
}

\newcommand{\makeAcknowledgement}{
  \newpage
  \thispagestyle{empty}
  
  ~
  \vfill 
  
  \tb{\ThanksWord}
  
  \vspace{1em}
  \podekovani
  \begin{flushright}
  \@author
  \end{flushright} 
}

  \newcommand\odstavec[2]{%
      \setbox\odstavecbox=\hbox{%
           \parbox[t]{#1}{#2\vrule width 0pt depth 4pt}}%
      \global\vyskaodstavce=\dp\odstavecbox
      \box\odstavecbox}

  \newbox\odstavecbox
  \newlength\vyskaodstavce
  \newcommand{\delka}{120mm}

\newcommand{\vedouci}{Supervisor Name}
\newcommand{\pracovisteVed}{Supervisor Affiliation}

\newcommand{\konzultant}{Consultant Name}
\newcommand{\pracovisteKonz}{Consultant Affiliation}
\newcommand{\secondKonzultant}{~}
\newcommand{\pracovisteSecKonz}{~}

\newcommand{\skola}{University}
\newcommand{\fakulta}{Faculty}
\newcommand{\katedra}{Department Name}
\newcommand{\obor}{Study major}
\newcommand{\druh}{Generic academic work}
\newcommand{\skenZadaniPredni}{specimen1.pdf}
\newcommand{\skenZadaniZadni}{specimen2.pdf}
\newcommand{\keyword}{foo, bar}
\newcommand{\abstrEN}{Some abstract}
\newcommand{\abstrCZ}{Nějaký abstrakt}



\newcommand{\makeTOC}{
  
  \newpage  
  \parskip=0pt
  \begin{small}
  \tableofcontents
  \end{small}
  \parskip=7pt
  \newpage 
}

\newcommand{\prohlaseni}{foo}

\newcommand{\supervisor}[2]{
  \renewcommand{\vedouci}{#1}
  \renewcommand{\pracovisteVed}{#2}
}

\newcommandx{\consultant}[2]{
  \renewcommand{\konzultant}{#1}
  \renewcommand{\pracovisteKonz}{#2}
}
\newcommand{\secondConsultant}[2]{
  \renewcommand{\secondKonzultant}{#1}
  \renewcommand{\pracovisteSecKonz}{#2}
}

\newcommand{\university}[1]{
  \renewcommand{\skola}{#1}
}

\newcommand{\faculty}[1]{
  \renewcommand{\fakulta}{#1}
}

\newcommand{\department}[1]{
  \renewcommand{\katedra}{#1}
}


\newcommand{\major}[1]{
  \renewcommand{\obor}{#1}
}

\newcommand{\type}[1]{
  \renewcommand{\druh}{#1}
}

\newcommand{\scanOfAssignment}[2]{
  \renewcommand{\skenZadaniPredni}{#1}
  \renewcommand{\skenZadaniZadni}{#2}
}

\newcommand{\keywords}[1]{
  \renewcommand{\keyword}{#1}
}


\newcommand{\proclamation}[1]{
  \renewcommand{\prohlaseni}{#1}
}

\newcommand{\acknowledgement}[1]{
  \renewcommand{\podekovani}{#1}
}

\newcommand{\podekovani}{bar}

\newcommand{\Year}{9999}

\renewcommand{\year}[1]{
  \renewcommand{\Year}{#1}
}