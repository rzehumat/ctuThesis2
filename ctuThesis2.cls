\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ctuThesis2}
\LoadClass{book}



% languages
%% TODO TODO continue here

\input{template/packages.tex}
% necessary packages
\input{template/lngopt_cz.tex}
\input{template/lngopt_en.tex}




% other options are assumed to be related to book package
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax



% \usepackage[english]{babel}



\addbibresource{ref.bib}



% TODO: pass language options from class here
% \usepackage[english]{babel} 
% \usepackage[czech]{babel} 
% \usepackage[slovak]{babel} 

\newcommand{\stdindent}{\setlength{\parindent}{2em}}
\newcommand{\stdskip}{\setlength{\parskip}{0em}}

\pagenumbering{arabic} % číslování stránek arabskými číslicemi

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
\frenchspacing % za větou bude mezislovní mezera (v anglických textech je mezera za větou delší)
\widowpenalty=1000 % "síla" zákazu vdov (= jeden řádek ze začátku odstavce na konci stránky)
\clubpenalty=1000 % "síla" zákazu sirotků (= jeden řádek/slovo z konce odstavce samostatně na začátku stránky)
\brokenpenalty=1000 % "síla" zákazu zlomu stránky za řádkem, který má na konci rozdělené slovo


% commands
% ==== Aliases, own commands ====

\input{template/commands.tex}



%% Math aliases
\newcommand{\mdef}[3]{
	\begin{define}[#1]
		\label{mdef:#2}
		#3
	\end{define}
}

\newcommand{\mtheor}[3]{
	\begin{theorem}[#1]
		\label{mtheor:#2}
		#3
	\end{theorem}
}

\newcommand{\mlemma}[3]{
	\begin{lemma}[#1]
		\label{mlemma:#2}
		#3
	\end{lemma}
}

\newcommand{\mcomm}[3]{
	\begin{comment}[#1]
		\label{mcomm:#2}
		#3
	\end{comment}
}

\newcommand{\mex}[2]{
	\begin{example}
		\label{mex:#1}
		#2
	\end{example}
}



% CTU stuff

% CTU Faculties

\newcommand{\logoCVUT}{\includegraphics{img/symbol_cvut_konturova_verze_cb.pdf}} % logo ČVUT -- podle grafického manuálu ČVUT platného od prosince 2016. Pokud nevyhovuje PDF-verze, tak použijte jinou variantu loga: https://www.cvut.cz/logo-a-graficky-manual -> "Symbol a logo ČVUT v Praze"). Pokud chcete logo úplně vynechat, zadejte místo "\includegraphics{...}" text "\vspace{35mm}"

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
  
     % {\huge \tb{\nazevcz}\par}
     {\huge \tb{\@title}\par}
     \vspace{5mm}   
     % {\huge \tb{\nazeven}\par}
     
     \vspace{15mm}
     {\Large \MakeUppercase{\druh}}
  
     \vfill
     {\large
      \begin{tabular}{ll}
      \AuthorWord: & \@author\\
      \SupervisorWord: & \vedouci\\
      \YearWord: & \Year % \rok
      \end{tabular}
     }
  \end{center}
  
  \clearpage{\pagestyle{empty}\cleardoublepage} % prázdná stránka za tou "titulní", bez čísla

}

\newcommand{\includeAssignment}{
  %%%%%%%%%%%% ZADÁNÍ PRÁCE %%%%%%%%%%%%
  % Zadání (podepsané děkanem!) musíte NASKENOVAT. Ideálně jako 2stránkové PDF (soubor "zadani_cele.pdf"). 
  % Před svázáním to v jednom výtisku VYMĚNÍTE ZA ORIGINÁLNÍ ZADÁNÍ (podepsané děkanem fakulty)!
  \newpage  % SEM NESAHEJTE!
  \thispagestyle{empty} % SEM NESAHEJTE!
  
  %% zde podle toho, jak jste zadání naskenovali, VYBERTE variantu A, B nebo C:
  %
  % --- varianta A: zadání naskenované jako 2stránkové PDF:
  \includepdf[pages={1}]{img/\skenZadaniPredni} % NAHRAĎTE správným souborem!
  \includepdf[pages={1}]{img/\skenZadaniZadni}
  %
  %% --- varianta B: zadání naskenované jako jednotlivé stránky:
  %\includepdf[pages={1}]{zadani1.pdf} % 1. strana zadání v PDF
  %\includepdf[pages={1}]{zadani2.pdf} % 2. strana zadání v PDF
  %
  %% --- varianta C: zadání naskenované jako 2 samostatné obrázky:
  %% 1. strana zadání
  %\begin{center}
  %     \includegraphics[width=1\textwidth]{zadani1.jpg}
  %\end{center}
  %% 2. strana zadání
  %\newpage  % SEM NESAHEJTE!
  %\thispagestyle{empty} % SEM NESAHEJTE!
  %\begin{center}
  %     \includegraphics[width=1\textwidth]{zadani2.jpg}
  %\end{center}
  
}

\newcommand{\makeProclamation}{
  %%%%%%%%%%%% Prohlášení -- SEM NESAHEJTE! Generuje se automaticky z výše nastavených maker \kde{} a \prohlaseni{}. %%%%%%%%%%%%
  \newpage % SEM NESAHEJTE!
  \thispagestyle{empty}  % SEM NESAHEJTE!
  
  % SEM NESAHEJTE!
  ~
  \vfill % prázdné místo. SEM NESAHEJTE!
  
  \tb{\DeclarationWord} % SEM NESAHEJTE!
  
  \vspace{1em} % vertikální mezera. SEM NESAHEJTE!
  \prohlaseni
  
  \vspace{2em}  % SEM NESAHEJTE!
  \hspace{-0.5em}\begin{tabularx}{\textwidth}{X c}  % SEM NESAHEJTE!
  \inTownDay .................... &........................................ \\	% SEM NESAHEJTE!
  	& \@author
  \end{tabularx}	% SEM NESAHEJTE!

}

\newcommand{\makeAcknowledgement}{
  %%%%%%%%%%%% Poděkování  %%%%%%%%%%%%
  \newpage
  \thispagestyle{empty}
  
  ~
  \vfill % prázdné místo
  
  
  % -- následující kus kódu (do "%%%%%%%%%%%% ABSTRAKT") můžete odstranit, pokud nechcete psát poděkování:
  \tb{\ThanksWord}
  
  \vspace{1em} % vertikální mezera
  \podekovani
  \begin{flushright}
  \@author
  \end{flushright}  % <------- tady končí stránka s poděkováním

}



  \newcommand\odstavec[2]{%
      \setbox\odstavecbox=\hbox{%
           \parbox[t]{#1}{#2\vrule width 0pt depth 4pt}}%
      \global\vyskaodstavce=\dp\odstavecbox
      \box\odstavecbox}

  \newbox\odstavecbox
  \newlength\vyskaodstavce
  \newcommand{\delka}{120mm} % šířka textů ve 2. sloupci tabulky

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
  %%%%%%%%%%%% Obsah práce ... je generován AUTOMATICKY %%%%%%%%%%%%
  
  \newpage  % SEM NESAHEJTE!
  \parskip=0pt
  \begin{small}
  \tableofcontents % SEM NESAHEJTE!
  \end{small}
  \parskip=7pt
  \newpage % SEM NESAHEJTE!
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
\newcommand{\secondOne}[2]{
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

