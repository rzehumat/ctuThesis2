\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ctuThesis2}

\LoadClass[a4paper,twoside,12pt]{book}

% necessary packages
\usepackage[T1]{fontenc}    % kódování písma
\usepackage[nottoc]{tocbibind}      % citace
\usepackage[utf8]{inputenc}     % vstupní znaková sada tohoto dokumentu: UTF-8
\usepackage{makecell}

\usepackage[resetfonts]{cmap}
\usepackage{lmodern}
\usepackage{xargs}
\usepackage[title]{appendix}
\usepackage{import}
\usepackage[a4paper, hmarginratio=3:2]{geometry} % využití A4 stránky a nastavení okrajů (u vazby bude širší)
\usepackage{upgreek}
\usepackage{pdfpages} % pokud nemáte formulář "Zadání bak./dipl. práce" naskenovaný jako PDF, tak ZAKOMENTUJTE
\usepackage[hidelinks,unicode]{hyperref} % v PDF budou klikací odkazy ("hidelinks" je nebude rámovat)
\usepackage{emptypage}
\usepackage{graphicx} % balíček pro vkládání rastrových grafických souborů (PNG apod.)
%\usepackage{epsfig} % balíčky pro vkládání grafických souborů typu EPS
\usepackage{float} % rozšířené možnosti umístění obrázků

\usepackage[font=small,labelfont=bf]{caption}
%\usepackage{caption} % pro popisky obrázků, tabulek atd.

\usepackage{tabularx} % rozšířené možnosti tabulek

\usepackage{listings}  % balíček vhodný pro ukázky zdrojového kódu v~textu práce/příloh. Nutno nastavit! http://ftp.cvut.cz/tex-archive/macros/latex/contrib/listings/listings.pdf
\usepackage{amsmath} % balíček pro pokročilou matematickou sazbu
\usepackage{amssymb}
%\usepackage{color} % pro možnost barevného textu
%\usepackage{fancybox} % umožňuje pokročilé rámečkování
%\usepackage{minipage}
%\usepackage{index} % nutno použít v případě tvorby rejstříku balíčkem makeindex
%\newindex{default}{idx}{ind}{Rejstřík} % zavádí rejstřík v případě použití balíku index
\usepackage{tocloft}
\usepackage{paralist}

% Proper bibliography
\usepackage[style=iso-numeric, backend=biber, language=czech]{biblatex}
\usepackage{csquotes}
\usepackage{amsthm}
\addbibresource{ref.bib}


%% nice header style
\usepackage{fancyhdr}

%% elements, isotopes,...
\usepackage[version=3]{mhchem}

\usepackage{gensymb}

\usepackage[printonlyused,footnote]{acronym}

% TODO: pass language options from class here
\usepackage[english]{babel} 
% \usepackage[czech]{babel} 
% \usepackage[slovak]{babel} 

% TODO: apply this according to language options
\usepackage{indentfirst}
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


% Aliases
\newcommand{\ti}{\textit} % zkrácený příkaz pro kurzívu
\newcommand{\tb}{\textbf} % zkrácený příkaz pro tučné písmo
\newcommand{\bv}{\mathbf} % zkrácený příkaz pro tučné vektory v math mode

% Smaller lists

% Compact itemize
\newcommandx{\cit}[1]{
        \begin{compactitem}
                #1
        \end{compactitem}
}

% Compact enumerate
\newcommandx{\cen}[1]{
        \begin{compactenum}
                #1
        \end{compactenum}
}


% Faster and better images

% Single figure
\newcommandx{\pic}[5][4=0.8,5=H]{%
\begin{figure}[#5]
\centering
\includegraphics[width=#4\textwidth]{./img/#1}
\caption[#2]{#3}
\label{#1}
\end{figure}
}

% Two pictures side-by-side
\newcommandx{\dpic}[9][7=0.49,8=0.98,9=H]{%
\begin{figure}[#9]
    \centering
    \begin{minipage}{#7\textwidth}
        \centering
        \includegraphics[width=#8\textwidth]{img/#1} % first figure itself
        \caption[#3]{#4}
        \label{#1}
    \end{minipage}\hfill
    \begin{minipage}{#7\textwidth}
        \centering
        \includegraphics[width=#8\textwidth]{img/#2} % second figure itself
        \caption[#5]{#6}
        \label{#2}
    \end{minipage}
\end{figure}
}

% Three figures side-by-side... Not really sure, whether it looks good
\newcommandx{\tpic}[9]{%
\begin{figure}[H]
    \centering
    \begin{minipage}{0.3\textwidth}
        \centering
        \includegraphics[width=0.95\textwidth]{img/#1} % first figure itself
        \caption[#2]{#3}
        \label{#1}
    \end{minipage}\hfill
    \begin{minipage}{0.3\textwidth}
        \centering
        \includegraphics[width=0.95\textwidth]{img/#4} % second figure itself
        \caption[#5]{#6}
        \label{#4}
    \end{minipage}\hfill
    \begin{minipage}{0.3\textwidth}
        \centering
        \includegraphics[width=0.95\textwidth]{img/#7} % second figure itself
        \caption[#8]{#9}
        \label{#7}
    \end{minipage}
\end{figure}
}

% Better footnotes above punctuation
\newcommand{\footnotei}[2]{%
\mbox{%
\setbox0\hbox{#1}%
\copy0%
\hspace{-\wd0}}%
\footnote{#2}%
}

% Equations
\newcommandx{\eq}[1]{
        \begin{equation}
                #1
        \end{equation}
}
\newcommandx{\eqa}[1]{
        \begin{align}
                #1
        \end{align}
}

% Units
\newcommand{\jdt}[1]{
        $\mathrm{#1}$
}
        
\newcommand{\jde}[1]{
        \mathrm{#1}
}

% Derivative faster
\newcommand{\der}[2]{
        \frac{\mathrm{d} #1}{\mathrm{d} #2}
}

% N-th derivative faster
\newcommand{\nder}[3]{
        \frac{\mathrm{d}^{#3} #1}{\mathrm{d} {#2}^{#3}}
}

% Partial derivative faster
\newcommand{\pder}[2]{
        \frac{\partial #1}{\partial #2}
}

% N-th partial derivative faster
\newcommand{\npder}[3]{
        \frac{\partial^{#3} #1}{\partial {#2}^{#3}}
}

% Auto-sized brackets

\renewcommand{\(}{
        \left(
}
\renewcommand{\)}{
        \right)
}

\renewcommand{\[}{
        \left[
}
\renewcommand{\]}{
        \right]
}

% Mathematics "Defintion-Theorem-Proof"
\theoremstyle{definition}
\newtheorem{define}{Definice}[section]
\newtheorem{theorem}[define]{Věta}
\newtheorem{lemma}[define]{Lemma}
\newtheorem{comment}{Poznámka}
\newtheorem{example}{Příklad}

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

% \_ for non-itallic sub indices
\let\underscore\_                                           % underscore sign
\let\xor\^                                                  % xor sign
\renewcommand\_[2][1]{\ifmmode _{\textnormal{\scalebox{#1}{#2}}}\else\underscore#2\fi} %roman subscript
\renewcommand\^[2][1]{\ifmmode ^{\textnormal{\scalebox{#1}{#2}}}\else\xor#2\fi} %roman superscript
\def\smallind{0.8}


% CTU stuff
\newcommand{\cvut}{České vysoké učení technické v~Praze}

% CTU Faculties
\newcommand{\fjfi}{Fakulta jaderná a fyzikálně inženýrská}
\newcommand{\fel}{Fakulta elektrotechnická}
\newcommand{\fit}{Fakulta informačních technologií}

% FNSPE 
\newcommand{\km}{Katedra matematiky}
\newcommand{\kf}{Katedra fyziky}
\newcommand{\kvhj}{Katedra humanitních věd a jazyků}
\newcommand{\kipl}{Katedra inženýrství pevných látek}
\newcommand{\kfe}{Katedra fyzikální elektroniky}
\newcommand{\kmat}{Katedra materiálů}
\newcommand{\kjch}{Katedra jaderné chemie}
\newcommand{\kdaiz}{Katedra dozimetrie a aplikace ionizujícího záření}
\newcommand{\kjr}{Katedra jaderných reaktorů}
\newcommand{\ksi}{Katedra softwarového inženýrství}
\newcommand{\di}{Dopplerův institut}

\newcommand{\logoCVUT}{\includegraphics{img/symbol_cvut_konturova_verze_cb.pdf}} % logo ČVUT -- podle grafického manuálu ČVUT platného od prosince 2016. Pokud nevyhovuje PDF-verze, tak použijte jinou variantu loga: https://www.cvut.cz/logo-a-graficky-manual -> "Symbol a logo ČVUT v Praze"). Pokud chcete logo úplně vynechat, zadejte místo "\includegraphics{...}" text "\vspace{35mm}"
