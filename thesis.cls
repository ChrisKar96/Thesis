\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2022/07/01 My thesis class]

\LoadClass{report}

% TEXT FORMATTING
% set spacing between lines (διάστιχο)
\usepackage{setspace}
\setstretch{1.5}
% package to customize chapters, sections and subsections style
\usepackage{titlesec}
% chapter title appearance format
\titleformat{\chapter}[display]
{\bfseries\huge}{\chaptertitlename\space\thechapter}{16pt}{}
% https://www.sharelatex.com/learn/Sections_and_chapters
\titlespacing{\chapter}{0pc}{1.5ex plus .1ex minus .2ex}{5pc}
% section title appearance format
\titleformat{\section}
{\bfseries\large}{\thesection}{14pt}{}
% subsection title appearance format
\titleformat{\subsection}
{\bfseries\normalsize}{\thesubsection}{12pt}{}
\usepackage[a4paper]{geometry}

% TABLE CELL PADDING
\setlength{\tabcolsep}{0.5em} % for the horizontal padding
{\renewcommand{\arraystretch}{1.6}% for the vertical padding

% xelatex wants fontspec
\usepackage{fontspec}
\usepackage{xltxtra}
\usepackage{xgreek}
\defaultfontfeatures{Ligatures=TeX}
\usepackage{xunicode}
\usepackage{tinos}
% package allows to place figures
\usepackage{graphicx}
\graphicspath{{Figures/}{./}} % Specifies where to look for included images
\usepackage{setspace}

\usepackage{csquotes}
\usepackage[english,greek]{babel}

% Use biblatex for bibliography
\usepackage{biblatex} 
\addbibresource{refs.bib}

% Caption customization
% use this package to set appearance for captions
\usepackage{caption}
% caption size for figures 10pt
\captionsetup[figure]{font=footnotesize,labelfont=footnotesize}
% caption size for tables 10pt and underlined
\usepackage[normalem]{ulem} % Package for underlining
\DeclareCaptionLabelFormat{label_format}{\uline{#1~#2}} % underline label
\DeclareCaptionTextFormat{text_format}{\uline{#1}} % underline text
\DeclareCaptionLabelSeparator{separator_format}{\uline{:~}} % underline separator
\captionsetup[table]{font=normalsize,labelfont=normalsize,labelformat=label_format,textformat=text_format,labelseparator=separator_format}

% use this package to define custom colors
\usepackage{xcolor}

% create colors
\colorlet{punct}{red!60!black}
\definecolor{background}{HTML}{EEEEEE}
\definecolor{delim}{RGB}{20,105,176}
\colorlet{numb}{magenta!60!black}

% use this package for algorithms
\usepackage{algorithm2e}

% use this package to show actual code listings
\usepackage{listings}

% change listings name in caption to Απεικόνιση
\renewcommand{\lstlistingname}{Απεικόνιση}

% change listings name in contents page to Κατάλογος απεικονήσεων
\renewcommand\lstlistlistingname{Κατάλογος Απεικονίσεων}

% set custom colorscheme for listings with language=lang1 to make them stand out more
% http://tex.stackexchange.com/questions/83085/how-to-improve-listings-display-of-json-files
\lstdefinelanguage{lang1}{
	basicstyle=\normalfont\ttfamily,
	%    numbers=left,
	%    numberstyle=\scriptsize,
	%    stepnumber=1,
	%    numbersep=8pt,
	showstringspaces=false,
	breaklines=true,
	frame=lines,
	backgroundcolor=\color{background},
	literate=
	*{0}{{{\color{numb}0}}}{1}
	{1}{{{\color{numb}1}}}{1}
	{2}{{{\color{numb}2}}}{1}
	{3}{{{\color{numb}3}}}{1}
	{4}{{{\color{numb}4}}}{1}
	{5}{{{\color{numb}5}}}{1}
	{6}{{{\color{numb}6}}}{1}
	{7}{{{\color{numb}7}}}{1}
	{8}{{{\color{numb}8}}}{1}
	{9}{{{\color{numb}9}}}{1}
	{:}{{{\color{punct}{:}}}}{1}
	{,}{{{\color{punct}{,}}}}{1}
	{\{}{{{\color{delim}{\{}}}}{1}
	{\}}{{{\color{delim}{\}}}}}{1}
	{[}{{{\color{delim}{[}}}}{1}
	{]}{{{\color{delim}{]}}}}{1},
}


% create command for blank page
\usepackage{afterpage}
\newcommand\blankpage{%
	\null
	\thispagestyle{empty}%
	\addtocounter{page}{-1}%
	\newpage}

% add clickable hyperlinks
\usepackage{hyperref}
\hypersetup{
	colorlinks,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	urlcolor=black
}

% use fancy header and footer
\usepackage{fancyhdr}
\usepackage{blindtext} % to quickly get a full document

% use longtable for db tables
\usepackage{longtable}

% Turn on the style
\pagestyle{fancy}

% Clear the header and footer
\fancyhf{}

% Set the right side of the footer to be the page number
\fancyfoot[R]{\thepage}

% set page number appearance to bottom right
\fancypagestyle{plain}{%
	\renewcommand{\headrulewidth}{0pt}
	\fancyhf{}
	\fancyfoot[R]{\thepage}%
}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

% change the word 'Alrogithm' in caption to Αλγόριθμος
\renewcommand*{\algorithmcfname}{Αλγόριθμος}

% Change "List of Algorithms" to "Κατάλογος αλγορίθμων"
\renewcommand\listalgorithmcfname{Κατάλογος αλγορίθμων}

% package to create and customize appendixes (Παραρτήματα)
% put appendix title to table of contents (toc)
% Puts a title (e.g., ‘Appendices’) into the document at the point where the appendices environment is begun (page)
\usepackage[toc,page]{appendix}
% change appendix name to Παραρτήματα in table of content
\renewcommand{\appendixtocname}{Παραρτήματα}
% change appendix name to Παραρτήματα in page
\renewcommand{\appendixpagename}{Παραρτήματα}