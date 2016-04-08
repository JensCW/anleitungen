\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{papanleitung}[2016-4-8 Stil für die Anleitungen des Physikalischen Anfängerpraktikums der Universität Heidelberg]

\newif\if@print
\DeclareOption{print}{\@printtrue}
\DeclareOption{digital}{\@printfalse}

\ProcessOptions\relax


% General
\LoadClass[twocolumn]{article}

% TODO: are these necessary here, or move to where they are needed?
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{dcolumn}
\usepackage{longtable}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{wrapfig}
\usepackage{epsfig}
\usepackage{multirow}

% TODO: what is this for?
%\textheight=16.2cm \textwidth=25 cm \evensidemargin=\oddsidemargin
%\setlength{\headsep}{25pt}
%
%
%\font \tams  = cmmib10   scaled \magstep1 \font \tamss =cmmib10
%\font \tenbfne = cmb10   scaled \magstep1 \font \sevenbfne = cmb10
%\def\vek#1{\ifmmode{\textfont1=\tams\scriptfont1=\tamss
%              \textfont0=\tenbfne\scriptfont0=\sevenbfne
%              \mathchoice{\hbox{$\displaystyle#1$}}{\hbox{$\textstyle#1$}}
%              {\hbox{$\scriptstyle#1$}}{\hbox{$\scriptscriptstyle#1$}}}
%            \else \vrule width 4pt\ #1\ \fi}


% Language
\usepackage[english,ngerman]{babel} % all languages being used, with main language last in list

% Geometry
\usepackage[a4paper,margin=1in,landscape]{geometry}

% Page Layout
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\large Physikalisches Anf\"{a}ngerpraktikum der Universit\"{a}t Heidelberg - Praktikum II}
\fancyhead[R]{\large Versuch \versuchnr{} \versuchshorttitle{}}
\fancyfoot[C]{\large \vspace{0.1in}$\qquad$\rm\thepage}
\fancyfoot[L]{\large \copyright~Dr. J.Wagner - Physikalisches Anf\"{a}ngerpraktikum -~V.~1.2~Stand~07/2010}
\renewcommand{\footrulewidth}{0.4pt}

\renewcommand{\thesection}{\Roman{section}}

% Document Structure
\AtBeginDocument{
    \begin{center}
        \LARGE\bf{Versuch \versuchnr{}\\ \versuchtitle{}}
    \end{center}
}

% Links
\usepackage{color,xcolor}
\usepackage{hyperref}
\if@print % switch link coloring off for printing
	\hypersetup{colorlinks=false}
\else
	\hypersetup{colorlinks=true}
\fi
\definecolor{uhd}{RGB}{196,19,47} % the red UHD brand color
\hypersetup{
	allcolors=uhd
}
\AtBeginDocument{
	\hypersetup{ % set pdf metadata
	    pdfauthor={Universität Heidelberg}, % could be \@author
		pdftitle={\@title}
	}
}

% Fonts
% TODO: we can set fonts here, but need to typeset with XeLaTex
%\usepackage{fontspec,xunicode}
%\setmainfont{Palatino}
%\setsansfont{Optima}
%\setmonofont[Scale=MatchLowercase]{Menlo}

% Units
% TODO: we can use this for units
%\usepackage[separate-uncertainty]{siunitx}
 
% Bibliography
%\usepackage[style=numeric-comp,backend=biber,maxnames=10,maxcitenames=2]{biblatex}
%\nocite{*} % print all references, even those not used

% Appendix
%\usepackage[toc,page]{appendix}

\input{../macros.tex}

\endinput
