% lin.cls

\def\lin@Ver{2015/04/29, v1.1.1}

\NeedsTeXFormat{LaTeX2e}

\LoadClass{article}

\RequirePackage{ifthen,array}
\RequirePackage{xspace}
\RequirePackage{everypage}
\RequirePackage{amsmath, amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{morefloats}
\RequirePackage{stfloats}
\RequirePackage{xcolor}
\RequirePackage{url}
\RequirePackage{txfonts}
\RequirePackage{setspace}
\RequirePackage[authoryear]{natbib}
\AtBeginDocument{\bibpunct[: ]{(}{)}{,}{a}{}{,\space}}%

\RequirePackage[twoside,paperheight=228mm,paperwidth=152mm,
  inner=17mm,textwidth=114mm,textheight=44pc,headheight=24pt,
  headsep=10pt,footskip=21pt,footnotesep=24pt plus 3pt minus 3pt,
  top=19.1mm]{geometry}

\newif\ifhideauthors
\newif\ifreview

\DeclareOption{times}{\AtBeginDocument{\RequirePackage{times}}}
\DeclareOption{referee}{\ExecuteOptions{anonym}\AtBeginDocument{\doublespacing}}
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{review}{\global\reviewtrue}
\DeclareOption{anonym}{\AtBeginDocument{\doublespacing}\global\hideauthorstrue}

\ProvidesClass{lin}[\lin@Ver\space Journal of Linguistics (Cambridge University Press)]

\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Skip, penalty parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\partopsep 0pt plus 1pt            
\lineskip 1pt
\normallineskip 1pt
\def\baselinestretch{1}
\frenchspacing
\@fptop 0pt plus 0fil    
\@fpsep 13pt plus 0fil   
\@fpbot 0pt plus 3fil    

%\doublehyphendemerits=10000
\lefthyphenmin=3 
\hbadness=10000
\vbadness=10000
\brokenpenalty=10000
\displaywidowpenalty=0
\sloppy

\thinmuskip = 4mu
\medmuskip = 4mu
\thickmuskip = 4mu
%\multlinegap = 0pt
\setlength{\jot}{5pt}
\parindent 10pt

\newskip\@indentskip   
\newskip\smallindent   
\newskip\@footindent   
\newskip\@leftskip     

\@indentskip=2pc
\smallindent=1em
\@footindent=\smallindent
\@leftskip=1pc


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\normalsize}{\@setsize\normalsize{12pt}\xpt\@xpt
 \abovedisplayskip 6.5pt plus 1pt minus 1pt
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip 3pt plus 1pt
 \belowdisplayshortskip  \abovedisplayskip
 \let\@listi\@listI}
\def\small{\@setsize\small{10pt}\xpt\@ixpt
 \abovedisplayskip 6pt plus 1pt minus 1pt
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip 3pt plus 1pt
 \belowdisplayshortskip \abovedisplayskip
 \def\@listi{\leftmargin\leftmargini
  \topsep 2pt plus 1pt minus 1pt
  \parsep \z@
  \itemsep \parsep}}
\def\footnotesize{\@setsize\footnotesize{9pt}\xpt\@viiipt
 \abovedisplayskip 6pt plus 2pt minus 4pt
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip  \z@ \@plus\p@
 \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
 \def\@listi{\leftmargin\leftmargini
  \topsep 3pt \@plus\p@ \@minus \p@
  \parsep 2\p@ \@plus\p@ \@minus\p@
%  \parsep \z@
  \itemsep \parsep}}
\def\indexsize{\@setsize\indexsize{9pt}\viiipt\@viiipt}
\def\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
\def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\def\large{\@setsize\large{14pt}\xiipt\@xiipt}
\def\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
\def\LARGE{\@setsize\LARGE{21pt}\xviipt\@xviipt}
\def\huge{\@setsize\huge{25pt}\xxpt\@xxpt}
\def\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}
\normalsize

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Various lists
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\leftmargini   \@indentskip
\leftmarginii  1.5pc
\leftmarginiii 1.5pc
\leftmarginiv  1.5pc
\leftmarginv   1pc
\leftmarginvi  1pc
\leftmargin\leftmargini
\labelsep 0.5em
\labelwidth\leftmargini\advance\labelwidth-\labelsep
%
% label macros for Range-Left and Range-Right labels
\def\makeRLlabel#1{\rlap{#1}\hss}
\def\makeRRlabel#1{\hss\llap{#1}}
%
\def\@listI{\leftmargin\leftmargini
 \parsep \z@ plus 1pt minus 1pt
 \topsep 6.5pt plus 1pt minus 1pt
 \itemsep \z@ plus 1pt minus 1pt
 \let\makelabel\makeRLlabel}
\let\@listi\@listI
\@listi
\def\@listii{\leftmargin\leftmarginii
 \labelwidth\leftmarginii\advance\labelwidth-\labelsep
 \topsep 6.5pt plus 1pt minus 1pt
 \parsep \z@
 \itemsep \parsep
 \let\makelabel\makeRLlabel}
\def\@listiii{\leftmargin\leftmarginiii
 \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
 \topsep 6.5pt plus 1pt minus 1pt
 \parsep \z@
 \partopsep \z@
 \itemsep \parsep
 \let\makelabel\makeRRlabel}
\def\@listiv{\leftmargin\leftmarginiv
 \labelwidth\leftmarginiv\advance\labelwidth-\labelsep
 \let\makelabel\makeRLlabel}
\def\@listv{\leftmargin\leftmarginv
 \labelwidth\leftmarginv\advance\labelwidth-\labelsep
 \let\makelabel\makeRLlabel}
\def\@listvi{\leftmargin\leftmarginvi
 \labelwidth\leftmarginvi\advance\labelwidth-\labelsep
 \let\makelabel\makeRLlabel}

\def\labelenumi{\theenumi}
\def\theenumi{\arabic{enumi}.}

\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}

\def\labelenumiii{\theenumiii}
\def\theenumiii{\roman{enumiii}.}
\def\p@enumiii{\theenumi(\theenumii)}

\def\labelenumiv{\theenumiv}
\def\theenumiv{\Alph{enumiv}.}
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
       \let\makelabel\descriptionlabel}}
\let\enddescription\endlist
%
\def\unnum{\list{}{\labelwidth\z@
       \leftmargin \parindent
       \itemindent-\parindent}}
\let\endunnum\endlist

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\verse{\let\\=\@centercr
  \list{}{\itemsep\z@
          \itemindent -\@indentskip
          \listparindent \itemindent
          \rightmargin\leftmargin
          \advance\leftmargin \@indentskip}\item[]}
\let\endverse\endlist

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quotation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\quotation{\list{}{\listparindent \smallindent
    \itemindent\listparindent
    \leftmargin\z@\rightmargin\leftmargin
    \parsep 0pt plus 1pt}\item[]\small}
\let\endquotation=\endlist

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table of contents (TOC)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\tableofcontents{\begingroup\def\target##1{}\def\color##1{}%
 \begin{center}\parbox{0.83\textwidth}{%AJW
  \@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \section*{CONTENTS}
  \@starttoc{toc}
  \if@restonecol\twocolumn\fi
  \par\vspace{13pt}}\end{center}\endgroup}

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{1}

\def\@undottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth
  \else
   \vskip \z@ plus .2pt
   {\hangindent #2\relax
    \rightskip \@tocrmarg
    \parfillskip -\rightskip
    \parindent #2\relax
    \@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    #4\nobreak
    \hfill \nobreak
    \hbox to\@pnumwidth{\hfil\rm \ }\par}\fi}

\def\l@section#1#2{\addpenalty{\@secpenalty}
 \@tempdima 1.5em
 \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  \rm \leavevmode
  \advance\leftskip\@tempdima
  \hskip -\leftskip
  #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss#2}\par %AJW
 \endgroup
}
\def\l@subsection{\@undottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@undottedtocline{3}{3.8em}{3.2em}}
\def\l@paragraph{\@undottedtocline{4}{7.0em}{4.1em}}
\def\l@subparagraph{\@undottedtocline{5}{10em}{5em}}

% List of figures
\def\listoffigures{\@restonecolfalse
 \if@twocolumn\@restonecoltrue\onecolumn\fi
 \section*{LIST OF FIGURES\@mkboth{List of Figures}{List of Figures}}
 \@starttoc{lof}
 \if@restonecol\twocolumn\fi
}
\def\l@figure{\@undottedtocline{1}{1.5em}{2.3em}}

% List of tables
\def\listoftables{\@restonecolfalse
 \if@twocolumn\@restonecoltrue\onecolumn\fi
 \section*{LIST OF TABLES\@mkboth{List of Tables}{List of Tables}}
 \@starttoc{lot}
 \if@restonecol\twocolumn\fi
}
\let\l@table\l@figure

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{4}
\def\soSec#1{#1}

\def\corresp#1{}
\def\inst#1{#1}
\def\addr#1{#1}
\def\cnty#1{#1}
\def\email#1{#1}
\let\aff\address
\def\surname#1{#1}
\def\givenname#1{#1}

\newcounter{lin@tmpCtr}
\newcounter{lin@auCtr}
\setcounter{lin@auCtr}{0}

\def\lin@author{\stepcounter{lin@auCtr}%
  \@ifnextchar[{\lin@opt@author}{\lin@norm@author}}

\let\lin@au@uppercase\uppercase
\def\lin@opt@author[#1]#2{%
  \expandafter\gdef\csname lin@@author\thelin@auCtr @opts\endcsname{#1}%
  \expandafter\gdef\csname lin@@author\thelin@auCtr%
    \endcsname{\ignorespaces\lin@au@uppercase{#2}}
  }

\def\lin@norm@author#1{\expandafter\gdef\csname 
  lin@@author\thelin@auCtr\endcsname{#1}}

\let\author\lin@author

\def\lin@author@sep{%
  \ifnum\thelin@tmpCtr=1\relax\else%
  \ifnum\count@lin@auCtr=\thelin@tmpCtr%
  \ifnum\count@lin@auCtr=2\else\unskip,\fi\space%
  and\space\else\unskip,\space\fi\fi}

\def\lin@printAuAdd{%
  \def\inst##1##2{##1}%
  \def\addr##1##2{\ifx##2,\else##2\fi}%
  \def\cnty##1{}%
  \def\email##1{}%
  \edef\count@lin@auCtr{\thelin@auCtr}%
  \setcounter{lin@tmpCtr}{0}%
  \whiledo{\count@lin@auCtr>\thelin@tmpCtr}
  {\stepcounter{lin@tmpCtr}%
  \csname lin@@author\thelin@tmpCtr\endcsname\\[7pt]%
  \edef\@tempx{\@nameuse{lin@@author\thelin@tmpCtr @opts}}%
  \@for\@@tempx:=\@tempx\do{\textit{\csname lin@@address\@@tempx\endcsname}\\[6pt]}\par\vskip4pt}%
  \normalsize}%

\def\lin@printAuAdd@end{%
\AtEndDocument{
  \trivlist\parindent 0pt\small
  \vskip 6pt
  \setbox0=\hbox{\textit{%
  \ifnum\thelin@auCtr>0\relax% 
    \ifnum\thelin@auCtr>1 Authors'\else Author's\fi\space  address\ifnum\thelin@auAdd>1es\fi:\enspace%
  \fi}%
  }
  \item[]\unhcopy0
  \let\lin@au@uppercase\relax
  \def\inst##1##2{##1##2}%
  \def\addr##1##2{##1##2}%
  \def\cnty##1{##1}%
  \def\email##1{\newline##1}%
  \def\givenname##1{}%
  \def\surname##1{\textit{(##1)}}%
  \edef\count@lin@auCtr{\thelin@auCtr}%
  \setcounter{lin@tmpCtr}{0}%
  \raggedright%
  \whiledo{\count@lin@auCtr>\thelin@tmpCtr}
  {\stepcounter{lin@tmpCtr}%
  \settowidth{\@tempdima}{\unhcopy0}%
  \ifnum\thelin@tmpCtr>1\hskip\the\@tempdima\fi%
  \parbox[t]{20pc}{\raggedright
  \ifnum\thelin@auCtr>1\csname lin@@author\thelin@tmpCtr\endcsname\\\fi%[7pt]%
  \edef\@tempx{\@nameuse{lin@@author\thelin@tmpCtr @opts}}%
  \@for\@@tempx:=\@tempx\do{\textit{\csname lin@@address\@@tempx\endcsname}\\[4pt]}}\par\vskip4pt}%
  \endtrivlist}}%

\def\lin@printAuthors{\edef\count@lin@auCtr{\thelin@auCtr}%
 \setcounter{lin@tmpCtr}{0}%
 \fontsize{10pt}{12}\selectfont%
 \whiledo{\count@lin@auCtr>\thelin@tmpCtr}
  {\stepcounter{lin@tmpCtr}%
  \lin@author@sep\csname lin@@author\thelin@tmpCtr\endcsname}%
  \normalsize}

% Address
\newcounter{lin@auAdd}
\def\lin@printAddress{}
\long\def\lin@address{\@ifnextchar[{\lin@opt@address}{\lin@norm@address}}

\long\def\lin@opt@address[#1]#2{\stepcounter{lin@auAdd}%
  \expandafter\gdef\csname lin@@address#1\endcsname{#2}}

\long\def\lin@norm@address#1{\g@addto@macro\lin@printAddress{%
  \fontsize{8}{9.2}\selectfont\par\textit{#1}}}

\let\address\lin@address

% Correspondence
\def\lin@corresp{}
\def\corresp#1{\unskip\g@addto@macro\lin@corresp{Correspondence to:
 #1}\ignorespaces}

\let\@leftrunning\@empty
\let\@rightrunning\@empty

\def\leftrunning#1{\gdef\@leftrunning{#1}}
\def\rightrunning#1{\gdef\@rightrunning{#1}}

%%% Ppage stlyes
% Title page
\def\ps@plain{
 \def\@oddhead{\footnotesize\textit{Article submitted %(to cover Review Articles, etc.)
 to Journal of Linguistics, Cambridge University Press (\the\year)}\hfill \thepage}
 \let\@evenhead\@oddhed
  \def\@oddfoot{\parbox[b]{\textwidth}{%
  %\hfil\thepage\hfil
  }}
 }


% Other pages
\def\ps@otherpages{
  \gdef\@oddhead{\hfil\fontsize{7pt}{7pt}\selectfont\MakeUppercase{\@rightrunning}\hfil\thepage}
  \gdef\@evenhead{\hfil\fontsize{7pt}{7pt}\selectfont\ifhideauthors\else\MakeUppercase{\@leftrunning}\fi\hfil\thepage}
 \def\@evenfoot{%
 \parbox[b]{\textwidth}{\hfil%\hbox{\thepage}
 \hfil}}
 \let\@oddfoot\@evenfoot}

\renewcommand\maketitle{\par
  \begingroup
    \def\x@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \def\x@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\x@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
        \@maketitle
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \pagestyle{otherpages}
}

%% Maketitle
\def\@maketitle{%
  \newpage
  \null
  \vspace{-1pc}%
  \begin{center}%
  \let \footnote \thanks
    {\fontsize{14pt}{16}\selectfont\bfseries\boldmath
    \@title \par}\strut%
  \par
  \ifhideauthors\else
  \lin@printAuAdd%
  \lin@printAuAdd@end%
  \fi%
  \par
  \end{center}
  \par}

\let\@submitted\@empty
\def\submitted#1{\gdef\@submitted{#1}}

%% Footnotes
\def\thefootnote{\arabic{footnote}}

\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width4pc
  \kern6\p@}

\def\@makefnmark{{\@textsuperscript{\normalfont\@thefnmark}}}

\renewcommand\@makefntext[1]{%
    \parindent 10pt%
    \noindent
    \llap{\hb@xt@1.75pc{\hss{[\@thefnmark]}\ }}%
    \leftskip1.75pc{#1}}

%%%% Abstract
\DeclareRobustCommand\keywords[1]{%
  {\par\vskip.5\baselineskip%
    \noindent{\small{\textbf{Keywords:}} #1}
     \par
     \vspace{\baselineskip}
    }}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\abstract{\list{}{\vskip 6pt
    \parsep 0pt plus 1pt\leftmargin 0pt}
    \item[]\small
    }
\def\endabstract{\vskip 6pt\endlist\normalsize}


%% Sectioning
%\setcounter{secnumdepth}{4}
\def\@seccntformat#1{\csname the#1\endcsname.\hskip.7em}
\renewcommand\section{\@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {1ex \@plus.2ex}{\normalfont\normalsize\scshape}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1ex \@plus .2ex}%
  {\normalfont\normalsize\itshape}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {.1ex \@plus .2ex}%
  {\normalfont\normalsize\itshape}}


% Float penalties
\setcounter{topnumber}{2}
\def\topfraction{.9}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.9}
\setcounter{totalnumber}{3}
\def\textfraction{.1}
\def\floatpagefraction{.75}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.9}
\def\dblfloatpagefraction{.5}

%% Math and other parameters
\thinmuskip=3mu
\medmuskip=4mu plus 2mu minus 4mu
\thickmuskip=5mu plus 3mu minus 1mu
\def\defaultscriptratio{.65}
\def\defaultscriptscriptratio{.5}
\parindent=9pt
\parskip=0pt
\hyphenpenalty=9999
\tolerance=1000
\emergencystretch=5pt
\lineskiplimit=-5pt

% Caption
\abovecaptionskip = 5pt
\belowcaptionskip = 5pt
\def\xxx{\def\endtabular{\crcr\egroup\egroup $\egroup} %$
%\expandafter \let \csname endtabular*\endcsname = \endtabular
\def\tabular{\edef\@halignto{to\textwidth}\@tabular}}

\extrarowheight 3pt
\long\def\@makecaption#1#2{% 
  \vskip\abovecaptionskip
  \small\centering
    \textit{#1}\par #2\par
  \edef\@tempx{\expandafter\@carcube\@currenvir\@nil}%
  \ifthenelse{\equal{\@tempx}{tab}}{\aftergroup\small}{}%
  \vskip\belowcaptionskip}

% Float penalty
\setlength\floatsep    {1\baselineskip \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{1\baselineskip \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {1\baselineskip \@plus 2\p@ \@minus 2\p@}

% Quote
\renewenvironment{quote}
  {\list{}{\rightmargin\parindent\leftmargin\rightmargin\itshape}%
  \item\relax}
  {\endlist}

% Bibliography
\def\thebibliography#1{\section*{\hfil\footnotesize\MakeUppercase\refname}
  \addcontentsline{toc}{section}{\refname}
  \list{}{\labelwidth\z@
    \leftmargin 8pt
    \itemindent-\leftmargin}
    \footnotesize
    \parindent\z@
    \parskip\z@ plus .1pt\relax
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax
    }
\let\endthebibliography=\endlist

\renewcommand{\doublespacing}{%
 \setstretch{1.4585}%
 \ifcase\@ptsize\relax%\normalsize
   \setstretch{1.4585}%
  \or%11pt
    \setstretch{1.4155}%
  \or%12pt
    \setstretch{1.448}%
  \fi}

% Misc
\parindent .5cm
\def\etal{et~al.\xspace}
\urlstyle{rm}
\bibsep 3pt
\def\bibfont{\small\raggedright}
\arraycolsep 2pt

\AtBeginDocument{
\def\SubExLBr{(}
\def\SubExRBr{)}
\def\resetExdefaults{%
%  \setlength{\Exlabelsep}{1.3em}% 
  \setlength{\Exlabelsep}{.5em}%%
  \setlength{\Extopsep}{.66\baselineskip}%
%%  \setlength{\SubSubExleftmargin}{2.4em}%old
  \setlength{\SubSubExleftmargin}{2em}
  \setlength{\SubExleftmargin}{2em}%
  \setlength{\Exindent}{0pt}%
  \setlength{\Exlabelwidth}{4em}%
  \setlength{\alignSubExnegindent}{\Exlabelsep}%
  \ifalignSubEx\addtolength{\Exlabelsep}{.7em}%
      \addtolength{\alignSubExnegindent}{.7em}\fi
  \setlength{\Exredux}{-\baselineskip}%
}

\def\wrapNum#1{(#1)}
\def\@xlist#1[#2]{\ifnum \@xnumdepth >3 \@toodeep\else%
    \advance\@xnumdepth \@ne%
    \edef\@xnumctr{xnum\romannumeral\the\@xnumdepth}%
    \def\@bla{#1}
    \ifx\@bla\empty\xs@default{\romannumeral\the\@xnumdepth}\else%
      \expandafter\let\csname @xs\romannumeral\the\@xnumdepth\endcsname#1\fi
    \begin{list}{\wrapNum{\csname the\@xnumctr\endcsname}}%
                {\usecounter{\@xnumctr}\@subex{#2}{2ex}}\fi}
% clgoss4e.sty
\@ifundefined{glossglue}{}{\glossglue = 1.5pt plus 2pt minus 1pt}
}

\endinput

