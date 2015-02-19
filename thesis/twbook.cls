%%
%% This is file `twbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% twbook.dtx  (with options: `class')
%%
%% Dies ist ein automatisch generierter File
%%
%% Copyright (C) 2013 Dr. Andreas Drauschke
%% <andreas.drauschke@technikum-wien.at>
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twbook}[2013/03/25 v0.03 Standard LaTeX Dokumenten-Klasse für Dokumente der FH Technikum Wien]


\newcommand{\sprache}{english}
\DeclareOption{german}{\renewcommand*{\sprache}{german}}
\DeclareOption{ngerman}{\renewcommand*{\sprache}{ngerman}}
\DeclareOption{english}{\renewcommand*{\sprache}{english}}

\newcommand{\degreecourse}{TW}
\DeclareOption{TW}{\renewcommand*{\degreecourse}{TW}}
\DeclareOption{BBE}{\renewcommand*{\degreecourse}{BBE}}
\DeclareOption{BEE}{\renewcommand*{\degreecourse}{BEE}}
\DeclareOption{BEL}{\renewcommand*{\degreecourse}{BEL}}
\DeclareOption{BEW}{\renewcommand*{\degreecourse}{BEW}}
\DeclareOption{BIC}{\renewcommand*{\degreecourse}{BIC}}
\DeclareOption{BIF}{\renewcommand*{\degreecourse}{BIF}}
\DeclareOption{BIW}{\renewcommand*{\degreecourse}{BIW}}
\DeclareOption{BMR}{\renewcommand*{\degreecourse}{BMR}}
\DeclareOption{BST}{\renewcommand*{\degreecourse}{BST}}
\DeclareOption{BVU}{\renewcommand*{\degreecourse}{BVU}}
\DeclareOption{BWI}{\renewcommand*{\degreecourse}{BWI}}
\DeclareOption{MBE}{\renewcommand*{\degreecourse}{MBE}}
\DeclareOption{MEE}{\renewcommand*{\degreecourse}{MEE}}
\DeclareOption{MES}{\renewcommand*{\degreecourse}{MES}}
\DeclareOption{MGR}{\renewcommand*{\degreecourse}{MGR}}
\DeclareOption{MGS}{\renewcommand*{\degreecourse}{MGS}}
\DeclareOption{MIC}{\renewcommand*{\degreecourse}{MIC}}
\DeclareOption{MIE}{\renewcommand*{\degreecourse}{MIE}}
\DeclareOption{MIT}{\renewcommand*{\degreecourse}{MIT}}
\DeclareOption{MIW}{\renewcommand*{\degreecourse}{MIW}}
\DeclareOption{MMR}{\renewcommand*{\degreecourse}{MMR}}
\DeclareOption{MSE}{\renewcommand*{\degreecourse}{MSE}}
\DeclareOption{MST}{\renewcommand*{\degreecourse}{MST}}
\DeclareOption{MTE}{\renewcommand*{\degreecourse}{MTE}}
\DeclareOption{MTI}{\renewcommand*{\degreecourse}{MTI}}
\DeclareOption{MTM}{\renewcommand*{\degreecourse}{MTM}}
\DeclareOption{MUT}{\renewcommand*{\degreecourse}{MUT}}
\DeclareOption{MWI}{\renewcommand*{\degreecourse}{MWI}}

\newcommand{\doctype}{}
\newcommand{\doctypeprint}{}
\DeclareOption{Bachelor}{\renewcommand*{\doctype}{BACHELORARBEIT}}
\DeclareOption{Master}{\renewcommand*{\doctype}{MASTERARBEIT}}
\DeclareOption{Seminar}{\renewcommand*{\doctype}{SEMINARARBEIT}}
\DeclareOption{Praktikum}{\renewcommand*{\doctype}{PRAKTIKUMSBERICHT}}
\DeclareOption{Labor}{\renewcommand*{\doctype}{LABORPROTOKOLL}}

\newcommand{\cover}{img/TW}

\ProcessOptions\relax

\LoadClass[a4paper,11pt,twoside=false,headings=normal,toc=listof,listof=entryprefix,listof=nochaptergap,bibliography=totoc]{scrbook}
\RequirePackage{color,xcolor}
\RequirePackage{xifthen}
\RequirePackage{ifpdf}
\RequirePackage{wallpaper}
\RequirePackage{palatino}
\RequirePackage{scrpage2}
\RequirePackage{acronym}
\RequirePackage{amsmath,amssymb,amsfonts,amstext}
\RequirePackage[\sprache]{babel}
\RequirePackage{array}
\ifpdf
  \RequirePackage[pdftex]{hyperref}
  \RequirePackage{graphicx}
\else
  \RequirePackage[dvips]{hyperref}
  \RequirePackage[dvips]{graphicx}
\fi

%  \renewcommand*{\@noopterr}[1]{%
%  \PackageWarning{babel}%
%   {You haven't loaded the option #1\space yet.\MessageBreak%
%Rerun to set the right option.\MessageBreak%
%Sie haben die Option #1\space aktuell nicht geladen.\MessageBreak%
%Kompilieren Sie noch einmal um die korrekte Option zu setzen}}

\definecolor{TWgreen}{RGB}{8,140,82}
\definecolor{TWblue}{RGB}{16,132,214}

\hypersetup{colorlinks=true, linkcolor=black, linkbordercolor=white,%
citecolor=black, citebordercolor=white,%
filecolor=black, filebordercolor=white,%
urlcolor=TWblue, urlbordercolor=white}
\urlstyle{sf}

\pagestyle{scrheadings}
\clearscrheadings
\rofoot[\footnotesize\pagemark]{\footnotesize\pagemark}
\renewcommand*{\chapterpagestyle}{plain}

\RequirePackage{remreset}
 \@removefromreset{figure}{chapter}
 \@removefromreset{table}{chapter}
 \@removefromreset{equation}{chapter}

\renewcommand*{\theequation}{\sffamily\arabic{equation}}
\renewcommand*{\thefigure}{\sffamily\small\arabic{figure}}
\renewcommand*{\thetable}{\sffamily\small\arabic{table}}
\setkomafont{caption}{\sffamily\small}
\setkomafont{captionlabel}{\sffamily\small}

\renewcommand*{\extrarowheight}{3pt}
\addtolength{\textheight}{5\baselineskip}
\addtolength{\textwidth}{38pt}
\setlength{\headheight}{1.3\baselineskip}
\renewcommand*{\baselinestretch}{1.21% \changes{v0.3}{2013/03/24}{Dokumentation implementiert}
}
\sloppy\tolerance=10000

\ifstr{\doctype}{}
{
  \addtolength{\oddsidemargin}{-33pt}
  \addtolength{\evensidemargin}{-33pt}
  \setkomafont{chapter}{\color{TWblue}\mdseries\Huge}
  \setkomafont{section}{\color{TWblue}\mdseries\huge}
  \setkomafont{subsection}{\color{TWblue}\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}
{
  \renewcommand*{\cover}{img/Arbeiten}
  \addtolength{\oddsidemargin}{-19pt}
  \addtolength{\evensidemargin}{-19pt}
  \setkomafont{chapter}{\mdseries\huge}
  \setkomafont{section}{\mdseries\LARGE}
  \setkomafont{subsection}{\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}

\renewcommand*\chapter{\par\global\@topnum\z@\@afterindentfalse%
\secdef\@chapter\@schapter}

\ifstr{\sprache}{english}{%
  \ifstr{\doctype}{BACHELORARBEIT}{%
    \renewcommand*{\doctype}{BACHELORTHESIS}}{}
  \ifstr{\doctype}{MASTERARBEIT}{%
    \renewcommand*{\doctype}{MASTERTHESIS}}{}
  \ifstr{\doctype}{SEMINARARBEIT}{%
    \renewcommand*{\doctype}{SEMINAR PAPER}}{}
  \ifstr{\doctype}{PRAKTIKUMSBERICHT}{%
    \renewcommand*{\doctype}{INTERNSHIP REPORT}}{}
  \ifstr{\doctype}{Laborbericht}{%
    \renewcommand*{\doctype}{LABORATORY REPORT}}}{}
  \ifstr{\doctype}{MASTERARBEIT}{%
    \renewcommand*{\doctypeprint}{MASTER THESIS}}{}
  \ifstr{\doctype}{MASTERTHESIS}{%
    \renewcommand*{\doctypeprint}{MASTER THESIS}}{}
  \ifstr{\doctype}{BACHELORARBEIT}{%
    \renewcommand*{\doctypeprint}{BACHELORARBEIT}}{}
  \ifstr{\doctype}{BACHELORTHESIS}{%
    \renewcommand*{\doctypeprint}{BACHELOR THESIS}}{}

\ifstr{\sprache}{german}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{img/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{img/BBE}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
  \ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{img/BEE}%
\renewcommand*{\degreecourse}{Urbane Erneuerbare Energietechniken}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{img/BEL}%
\renewcommand*{\degreecourse}{Elektronik}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{img/BEW}%
\renewcommand*{\degreecourse}{Elektronik/Wirtschaft}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{img/BIC}%
\renewcommand*{\degreecourse}{Informations- und %
  Kommunikationssysteme}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{img/BIF}%
\renewcommand*{\degreecourse}{Informatik}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{img/BIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{img/BMR}%
\renewcommand*{\degreecourse}{Mechatronik/Robotik}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{img/BST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{img/BVU}%
\renewcommand*{\degreecourse}{Verkehr und Umwelt}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{img/BWI}
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{img/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{img/MEE}%
\renewcommand*{\degreecourse}{Erneuerbare Urbane Energiesysteme}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{img/MES}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{img/MGR}%
\renewcommand*{\degreecourse}{Gesundheits- und %
  Rehabilitationstechnik}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{img/MGS}%
\renewcommand*{\degreecourse}{Game Engineering und Simulation}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{img/MIC}%
\renewcommand*{\degreecourse}{Informationsmanagement und %
  Computersicherheit}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{img/MIE}%
\renewcommand*{\degreecourse}{Industrielle Elektronik}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{img/MIT}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{img/MIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{img/MMR}%
\renewcommand*{\degreecourse}{Mechatronik/Robotik}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{img/MSE}%
\renewcommand*{\degreecourse}{Multimedia und Softwareentwicklung}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{img/MST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{img/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{img/MTI}%
\renewcommand*{\degreecourse}{Telekommunikation und %
  Internettechnologien}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{img/MTM}%
\renewcommand*{\degreecourse}{Innovations- und %
  Technologiemanagement}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{img/MUT}%
\renewcommand*{\degreecourse}{Technisches Umweltmanagement und %
  Ökotoxikologie}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{img/MWI_en}%
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{img/Arbeiten}}}{}

\ifstr{\sprache}{english}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{img/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{img/BBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
\ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{img/BEE_en}%
\renewcommand*{\degreecourse}{Urban Renewable Energy Technologies}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{img/BEL_en}%
\renewcommand*{\degreecourse}{Electronic Engineering}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{img/BEW_en}%
\renewcommand*{\degreecourse}{Electronics and Business}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{img/BIC_en}%
\renewcommand*{\degreecourse}{Information and Communication Systems %
and Services}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{img/BIF_en}%
\renewcommand*{\degreecourse}{Computer Science}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{img/BIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{img/BMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/Robotics}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{img/BST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{img/BVU_en}%
\renewcommand*{\degreecourse}{Transport and Environment}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{img/BWI_en}%
\renewcommand*{\degreecourse}{Business Informatics}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{img/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{img/MEE_en}%
\renewcommand*{\degreecourse}{Renewable Urban Energy Systems}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{img/MES_en}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{img/MGR_en}%
\renewcommand*{\degreecourse}{Healthcare and Rehabilitation %
  Technology}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{img/MGS_en}%
\renewcommand*{\degreecourse}{Game Engineering and Simulation %
  Technology}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{img/MIC_en}%
\renewcommand*{\degreecourse}{Information Management and IT %
  Security}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{img/MIE_en}%
\renewcommand*{\degreecourse}{Industrial Electronis}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{img/MIT_en}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{img/MIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{img/MMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/Robotics}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{img/MSE_en}%
\renewcommand*{\degreecourse}{Multimedia and Software Engineering}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{img/MST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{img/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{img/MTI_en}%
\renewcommand*{\degreecourse}{Telecommunications- and Internet %
  Technologies}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{img/MTM_en}%
\renewcommand*{\degreecourse}{Innovation and Technology Management}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{img/MUT_en}%
\renewcommand*{\degreecourse}{Environmental Management and %
  Ecotoxicolgy}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{img/MWI_en}%
\renewcommand*{\degreecourse}{Information Systems Management}}{}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{img/Arbeiten}}}{}

\newcommand*{\@supervisor}{}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@secondsupervisor}{}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand*{\@studentnumber}{}
\newcommand{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@place}{}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand*{\@kurzfassung}{}
\newcommand{\kurzfassung}[1]{\gdef\@kurzfassung{#1}}
\newcommand*{\@schlagworte}{}
\newcommand{\schlagworte}[1]{\gdef\@schlagworte{#1}}
\newcommand*{\@outline}{}
\newcommand{\outline}[1]{\gdef\@outline{#1}}
\newcommand*{\@keywords}{}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\@acknowledgements}{}
\newcommand{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}
\renewcommand*\maketitle[1][1]{%
  \sffamily
\begin{titlepage}
\pagestyle{empty}
  \ThisTileWallPaper{\paperwidth}{\paperheight}{\cover}

\ifstr{\doctype}{}
{
\color{TWblue}
\null\vspace{451pt}
    \setcounter{page}{-9}

\hspace*{-26pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.75}{\@title}
\end{minipage}\vspace{23pt}

\hspace*{-24.75pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.25}{\@extratitle}
\end{minipage}\vspace{47pt}
\setcounter{page}{0}}
{
  \color{white}
  \null\vspace{8pt}
  \setcounter{page}{-9}

\hspace*{-30pt}\scalebox{1.85}{\sffamily\textbf\doctypeprint}
\vspace{17pt}

\hspace*{-34pt}\scalebox{1.5}{%
  \ifstr{\degreecourse}{Technisches Umweltmanagement und
    Ökotoxikologie}
  {
    \begin{minipage}{0.63\linewidth}
      \ifstr{\sprache}{german}{\ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{\textbf{Im Studiengang}}}}{\ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\textbf{In}}}}
      \degreecourse
    \end{minipage}\vspace{5pt}}
  {
    \begin{minipage}{0.75\linewidth}
      \ifstr{\sprache}{german}{\ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{\textbf{Im Studiengang}}}}{\ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\textbf{In}}}}
      \degreecourse\vspace{5pt}
    \end{minipage}}}

  \vspace{54.7pt}
  \hspace*{-30pt}\begin{minipage}{1.1\linewidth}
   \huge\bfseries\sffamily \@title
\end{minipage}\vspace{47pt}

\hspace*{-30pt}\Large
\ifstr{\sprache}{german}{Ausgeführt von:~}{By:~}\@author

\hspace*{-30pt}\Large
\ifstr{\sprache}{german}{Personenkennzahl:~}{Student Number:~}
  \@studentnumber\vspace{0.9\baselineskip}

\hspace*{-30pt}\Large
  \ifx\@secondsupervisor\@empty
\ifstr{\sprache}{german}{BegutachterIn:}{Supervisor:~}
   \begin{minipage}[t]{0.6\linewidth}
   \@supervisor
   \end{minipage}\vspace{0.8\baselineskip}
  \else
\ifstr{\sprache}{german}{BegutachterInnen:}{Supervisors:~}
   \begin{minipage}[t]{0.6\linewidth}
  \@supervisor\\
   \@secondsupervisor
  \end{minipage}\vspace{0.8\baselineskip}
  \fi

\hspace*{-30pt}\Large\@place
\ifstr{\sprache}{german}{, den~}{,~} \today

\clearpage
\color{black}\normalsize\mdseries
\ifstr{\doctype}{BACHELORARBEIT}{
  \chapter*{Eidesstattliche Erklärung}
    \glqq Ich erkläre hiermit an Eides statt, dass ich die
      vorliegende Arbeit selbstständig angefertigt habe. Die aus
      fremden Quellen direkt oder indirekt übernommenen Gedanken sind
      als solche kenntlich gemacht. Die Arbeit wurde bisher weder in
      gleicher noch in ähnlicher Form einer anderen Prüfungsbehörde
      vorgelegt und auch noch nicht veröffentlicht. Ich versichere,
      dass die abgegebene Version jener im Uploadtool
      entspricht.''\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
 \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERARBEIT}{
  \chapter*{Eidesstattliche Erklärung}
    \glqq Ich erkläre hiermit an Eides statt, dass ich die
      vorliegende Arbeit selbstständig angefertigt habe. Die aus
      fremden Quellen direkt oder indirekt übernommenen Gedanken sind
      als solche kenntlich gemacht. Die Arbeit wurde bisher weder in
      gleicher noch in ähnlicher Form einer anderen Prüfungsbehörde
      vorgelegt und auch noch nicht veröffentlicht. Ich versichere,
      dass die abgegebene Version jener im Uploadtool
      entspricht.''\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{BACHELORTHESIS}{
  \chapter*{Declaration}
    ``I confirm that this paper is entirely my own work. All sources
      and quotations have been fully acknowledged in the appropriate
      places with adequate footnotes and citations. Quotations have been
      properly acknowledged and marked with appropriate punctuation. The
      works consulted are listed in the bibliography. This paper has not
      been submitted to another examination panel in the same or a
      similar form, and has not been published. I declare that the
      present paper is identical to the version
      uploaded.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERTHESIS}{
  \chapter*{Declaration}
    ``I confirm that this paper is entirely my own work. All sources
      and quotations have been fully acknowledged in the appropriate
      places with adequate footnotes and citations. Quotations have been
      properly acknowledged and marked with appropriate punctuation. The
      works consulted are listed in the bibliography. This paper has not
      been submitted to another examination panel in the same or a
      similar form, and has not been published. I declare that the
      present paper is identical to the version
      uploaded.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
  \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}}}}}
  \end{titlepage}
 }

\ifstr{\doctype}{}
{
  \renewcommand*{\labelitemi}{
    \huge\raisebox{0.2ex}{$\centerdot$}\hspace{-5pt}}
  \renewcommand*{\labelitemii}{
    \huge\raisebox{-0.15ex}{-}\hspace{-5pt}}
  \renewcommand*{\labelitemiii}{
    \LARGE\raisebox{0.3ex}{$\centerdot$}\hspace{-5pt}}
}{}
%% Verfasser der Änderung: Drauschke
\endinput
%%
%% End of file `twbook.cls'.
