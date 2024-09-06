\typeout{}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[Customized report style by Sebastian Schwindt (2024) for Bachelor, Master, and PhD theses]
\typeout{}

% use report class with the fleqn option to left-align equations
\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{report}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass[openright,fleqn]{report}

% Document Formatting
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[german,english]{babel}
\RequirePackage{microtype}
\RequirePackage{parskip}
\renewcommand{\familydefault}{\sfdefault}
% Alternative to arial font:
% \RequirePackage{fourier}
\RequirePackage{fancyhdr}

% Referencing
%\RequirePackage{fancyref}
% autorefs
\RequirePackage{hyperref}
\def\namedlabel#1#2{\begingroup
	#2%
	\def\@currentlabel{#2}%
	\phantomsection\label{#1}\endgroup
}
\RequirePackage{apacite}

% Formatting Preamble
\RequirePackage{helvet}
\RequirePackage[a4paper,top=22mm,bottom=25mm,inner=30.mm,outer=25mm]{geometry}
\setlength{\topmargin}{-2.2mm} % = 0mm -1in + 23.2mm 
\setlength{\textheight}{231.9mm} % = 297mm -29.5mm -31.6mm - 14mm (12 to accomodate footline with pagenumber)
\setlength{\headheight}{26pt}
\setlength{\parindent}{0pt}

% Graphics Preamble
\RequirePackage{graphicx}
\graphicspath{ {./images/} }
\RequirePackage[font={small}, hang]{caption}

% colors
\RequirePackage{xcolor}
\RequirePackage{colortbl} % add for color in tables
\definecolor{anthrazit}{RGB}{62,68,76}
\definecolor{unisblue}{RGB}{0,81,158}
\definecolor{iwsblue}{RGB}{0,190,255}

% Mathematics Preamble
% amssymb package provides various useful mathematical symbols
\RequirePackage{amssymb}
% amsthm package provides extended theorem environments
\RequirePackage{amsthm}
% amsmath enables aligned equations - load with left-aligned option
\RequirePackage[fleqn]{amsmath}
\RequirePackage{gensymb}  % degree symbols
% more symbology:
\RequirePackage{mathtools} % e.g. for \ventcolon
% enforce zero-indent left-alignment of equations
\AtBeginDocument{
    \setlength{\mathindent}{0pt}
}

% lists
\RequirePackage[inline, shortlabels]{enumitem} % letter type of listing (a)..(b)..

% packages for longtable with graphics
\RequirePackage{graphicx}
\RequirePackage{tabularray}
\RequirePackage{longtable} % for notations
% add table column types - requires array package
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{P}[1]{>{\centering\arraybackslash}m{#1}}

% enable vector drawings in figures
\RequirePackage{tikz}
\usetikzlibrary{3d,angles,arrows,arrows.meta,calc,intersections,overlay-beamer-styles,positioning,shadows.blur,shapes.arrows,shapes.geometric,shapes.symbols,shapes,snakes}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.11}
\usepgfplotslibrary{fillbetween}
\pgfdeclarelayer{bg}
\pgfsetlayers{bg,main}
\RequirePackage{varwidth}

\setlength\parindent{20pt}
\setlength\parskip{0pt}

\pgfplotscreateplotcyclelist{mylist}{
	cyan!60!black\\
	orange\\
	green!70!black\\
}
\pgfplotscreateplotcyclelist{mylistdatapoints}{
	orange, densely dashed\\
	red, densely dashed\\
	green!70!black, densely dashed\\
	brown!60!black, densely dashed\\
	lime!80!black, densely dashed\\
	blue\\
	orange\\
	red\\
	green!70!black\\
	brown!60!black\\
	lime!80!black\\
}
\pgfplotscreateplotcyclelist{mylistdashed}{
	cyan!60!black, densely dashed\\
	orange, densely dashed\\
	green!70!black, densely dashed\\
}
\pgfplotscreateplotcyclelist{mylistmixed}{
	cyan!60!black\\
	orange\\
	green!70!black,\\
	cyan!60!black, densely dashed\\
	orange,densely dashed\\
	green!70!black,densely dashed\\
}

% some more rendering for infoboxes
\RequirePackage{tcolorbox}
\RequirePackage{amsfonts}

% HYPOTHESIS TEMPLATE
% usage: 
% \myHypothesis{text}
\newcommand{\myHypothesis}[1]{
	\begin{tcolorbox}[colbacktitle=unisblue!35!black, colback=iwsblue!5!white, fonttitle=\bfseries, standard jigsaw,colframe=white!20!black, bottom=10mm, middle=10mm, top=10mm, boxsep=10mm, opacityframe=0.5, opacityfill=0.7, opacitybacktitle=0.95, title filled, title= Research question \& hypotheses, size=fbox]
		\vspace{2mm}	
		#1
		\vspace{1mm}
	\end{tcolorbox}
}
% INFOBOX TEMPLATE
% usage: 
% \infobox{title}{infoboxtext}
\newcommand{\infobox}[2]{
	\begin{tcolorbox}[colbacktitle=orange!85!black, colback=orange!5!white, fonttitle=\bfseries, standard jigsaw,colframe=orange!70!black, bottom=10mm, middle=10mm, top=10mm, boxsep=10mm, opacityframe=0.5, opacityfill=0.7, opacitybacktitle=0.95, title filled, title= #1, size=fbox]
		\vspace{2mm}	
		#2
		\vspace{1mm}
	\end{tcolorbox}
}
% DEFBOX DEFINITION BOX TEMPLATE
% \defbox{title}{deftext}
\newcommand{\defbox}[2]{
	\begin{tcolorbox}[colbacktitle=iwsblue!35!black, colback=iwsblue!5!white, fonttitle=\bfseries, standard jigsaw,colframe=unisblue, bottom=10mm, middle=10mm, top=10mm, boxsep=10mm, opacityframe=0.5, opacityfill=0.7, opacitybacktitle=0.95, title filled, title=\textcolor{white}{ Definition: #1}, size=fbox]
		\vspace{2mm}	
		#2
		\vspace{1mm}
	\end{tcolorbox}
}

% CODE BLOCK TEMPLATES

\RequirePackage{listings}
\lstset{language=[LaTeX]Tex,tabsize=4, basicstyle=\scriptsize\ttfamily, showstringspaces=false, numbers=left, numberstyle=\tiny, numbersep=10pt, breaklines=true, breakautoindent=true, breakindent=10pt}
\lstset{
    breaklines=true,
    breakatwhitespace=true,
    language=Python,
    frame=none,
    framerule=0.0pt,
    rulecolor=\color{gray},
    basicstyle=\ttfamily\small,
    keywordstyle=\color{red!50!blue},
    commentstyle=\color{gray},
    stringstyle=\color{red!90!white},
    numbers=left,
    numberstyle=\tiny\color{black!50!white},
    stepnumber=1,
    frame=single,
    breaklines=false,
    showspaces=false,
    showstringspaces=false,
    tabsize=4,
    backgroundcolor=\color{black!18!white}, % Light gray background
    captionpos=b,                        % Caption position (bottom)
}

% \codeblock{code}
\newcommand{\codeblock}[1]{
	\begin{lstlisting}
	#1
	\end{lstlisting}
}

%\inlinepy{python-code} and \inlinecode{code}
\newcommand{\inlinepy}[1]{{\raggedright
	\lstinline[breaklines=true,postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},keywordstyle=\sffamily\color{red!50!blue},language=Python,backgroundcolor=lightBook!25!white]{#1}}\justifying
}

\def\inlinecode{\lstinline[breaklines=true,postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},basicstyle=\ttfamily,keywordstyle=\sffamily\color{red!50!blue},language=Python,backgroundcolor=lightBook!25!white]}


% TERMINAL ENVIRONMENT - USAGE: 
% \begin{terminal}
% code
% \end{terminal}

\newenvironment{terminal}%
   {\par\noindent\adjustbox{margin=1ex,bgcolor=black!20!white,margin=0ex \medskipamount}\bgroup\minipage\linewidth\verbatim}%
   {\endverbatim\endminipage\egroup}

\RequirePackage{fancyvrb}
\RequirePackage{fvextra}
\RequirePackage{adjustbox}

% Define a custom Verbatim environment called Terminal
\DefineVerbatimEnvironment{terminal}{Verbatim}{
  fontsize=\small,
  formatcom=\color{unisblue!50!black},
  frame=single,
  framerule=0.0pt,
  framesep=5pt,
  commandchars=\\\{\},
  codes={\catcode`\$=2},
}


% OTHER CUSTOM COMMANS
\newcommand{\thesisURL}[2]%
{%
	\textcolor{iwsblue}{%
		\href{#2}{\color{iwsblue}{#1}}%
	}%
}

\newcommand{\R}{\mathbb{R}}

\endinput

