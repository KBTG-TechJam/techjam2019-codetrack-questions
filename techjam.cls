%% techjam.cls
%% Author: Abhabongse Janthong
%
% This document class preloads most common packages and most common
% configurations of the document according to my own taste.
%
% It is released under MIT License because the author thinks that the
% LaTeX Project Public License is annoying and life is complicated.
\NeedsTeXFormat{LaTeX2e}[2016/02/01]
\ProvidesClass{techjam}[2019/10/30 v0.1 (Abhabongse Janthong)]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Very important utility packages ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}
\RequirePackage{xparse}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Options for this document class ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[a4paper,10pt,openright]{memoir}
\RequirePackage[a4paper,margin=1in]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Spacings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{setspace}

%% Hair space
\newrobustcmd{\hrsp}{\ifmmode\mskip1mu\else\kern0.0625em\fi}

%% Spaces above or below equations
\setlength{\abovedisplayskip}{0.6pc plus 0.15pc minus 0.1pc}
\setlength{\belowdisplayskip}{0.6pc plus 0.15pc minus 0.1pc}
\setlength{\abovedisplayshortskip}{0.3pc plus 0.1pc minus 0.05pc}
\setlength{\belowdisplayshortskip}{0.3pc plus 0.1pc minus 0.05pc}
\setlength{\parskip}{0.5pc}
\setlength{\parindent}{2pc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Fonts and Languages ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath}
\RequirePackage[MnSymbol]{mathspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\RequirePackage{polyglossia}
\setdefaultlanguage{thai}
\setotherlanguage{english}

\PolyglossiaSetup{thai}{indentfirst=true}

% \RequirePackage{newtxsf}

% Enable line breaks for Thai text
\XeTeXlinebreaklocale "th_TH"
\XeTeXlinebreakskip = 0pt plus 0.75pt minus 0.5pt

\defaultfontfeatures[IBMPlexSans]{
    Path            = fonts/ ,
    Extension       = .otf ,
    UprightFont     = *-Text ,
    ItalicFont      = *-TextItalic ,
    BoldFont        = *-Bold ,
    BoldItalicFont  = *-BoldItalic ,
    Scale           = 1 ,
    WordSpace       = 1.6 ,
}

\defaultfontfeatures[IBMPlexSansThai]{
    Path            = fonts/ ,
    Extension       = .otf ,
    UprightFont     = *-Text,
    BoldFont        = *-Bold ,
    Scale           = 1 ,
    WordSpace       = 1.6 ,
}

\defaultfontfeatures[FiraCode]{
    Path            = fonts/ ,
    Extension       = .otf ,
    UprightFont     = *-Regular ,
    BoldFont        = *-Bold ,
    Scale           = 0.95 ,
    WordSpace       = 1.25 ,
    Contextuals     = Alternate ,
}

\defaultfontfeatures[FiraGO]{
    Path            = fonts/ ,
    Extension       = .otf ,
    UprightFont     = *-Book ,
    ItalicFont      = *-BookItalic ,
    BoldFont        = *-Bold ,
    BoldItalicFont  = *-BoldItalic ,
    Scale           = 0.95 ,
    WordSpace       = 1.25 ,
    Mapping         = tex-text ,
}

\newfontfamily\lightfont[
    Path            = fonts/ ,
    Extension       = .otf ,
    UprightFont     = *Thai-Light ,
    ItalicFont      = *-LightItalic ,
    BoldFont        = *Thai-SemiBold ,
    BoldItalicFont  = *-SemiBoldItalic ,
    Scale           = 1 ,
    WordSpace       = 1.6 ,
    Mapping         = tex-text ,
]{IBMPlexSans}

\setmainfont{IBMPlexSans}
\setmonofont{FiraCode}
\setmathsfont(Digits,Latin,Greek){IBMPlexSans}
\setmathrm{IBMPlexSans}

\newfontfamily\englishfont{IBMPlexSans}
\newfontfamily\thaifont[Script=Thai]{IBMPlexSansThai}
% \setmonofont[Script=Thai]{FiraGO}

\addto\captionsthai{\renewrobustcmd{\contentsname}{}}
% \addto\captionsthai{\renewrobustcmd{\contentsname}{\color{white}\textthai{สารบัญ}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Typographies ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[factor=1150]{microtype}
\newrobustcmd{\ltspc}{\addfontfeature{LetterSpace=5}}
\newrobustcmd{\twoemrule}{\rule[2.25pt]{2em}{0.5pt}}
\newrobustcmd{\threeemrule}{\rule[2.25pt]{3em}{0.5pt}}
\newrobustcmd{\ifpageodd}[2]{\ifodd\thepage{#1}\else{#2}\fi}

%%%%%%%%%%%%%%%%%%%%%%
%% ---- Images ---- %%
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%
%% ---- Colors ---- %%
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[x11names,svgnames,usenames,dvipsnames,table,hyperref]{xcolor}
\RequirePackage{hyperref}

%% Color palette
\definecolor{TechJamDarkBackground}{HTML}{2A2A2A}
\definecolor{KBTGGreen}{HTML}{38A947}
\definecolor{KBTGCyan}{HTML}{64CCC9}
\definecolor{KBTGRed}{HTML}{DA291C}
\definecolor{KBTGLightGray}{HTML}{DEDEDE}
\definecolor{KBTGDarkGray}{HTML}{1A1A1A}
\definecolor{KBTGWarmGray}{HTML}{83786F}

% \definecolor{KBTGGreen}{HTML}{1BA757}
% \definecolor{KBTGRed}{HTML}{EB1E35}
% \definecolor{KBTGSecondaryBlue}{HTML}{1B61A7}
% \definecolor{KBTGSecondaryOrange}{HTML}{EB991E}
% \definecolor{KBTGMainGray}{HTML}{4E4E4D}
% \definecolor{KBTGMidGray}{HTML}{C7C7C7}
% \definecolor{KBTGLightGray}{HTML}{FAFAFA}
% \definecolor{KBTGLighterGreen}{HTML}{98F6C1}
% \definecolor{KBTGLighterRed}{HTML}{F5ADB4}
% \definecolor{KBTGLighterBlue}{HTML}{98C7F6}
% \definecolor{KBTGLighterOrange}{HTML}{F5D7AD}

%% Color settings for listings
\colorlet{CodePrimaryKeyword}{RoyalBlue3}
\colorlet{CodeSecondaryKeyword}{Red3}
\colorlet{CodeTertiaryKeyword}{TealBlue}
\colorlet{CodeIdentifier}{black!60!white}
\colorlet{CodeNumber}{Red3}
\colorlet{CodeString}{Red3}
\colorlet{CodeComment}{Green4}
\colorlet{CodeSymbol}{Ivory4!60!Gold4}

% http://color-themes.com/?view=theme&id=5afc014550544f1700232c32
% \definecolor{CodePrimaryKeyword}{HTML}{619BAB}
% \definecolor{CodeSecondaryKeyword}{HTML}{B66BB2}
% \colorlet{CodeTertiaryKeyword}{TealBlue}
% \definecolor{CodeIdentifier}{HTML}{C5C8C6}
% \definecolor{CodeNumber}{HTML}{FF7477}
% \definecolor{CodeString}{HTML}{55C149}
% \definecolor{CodeComment}{HTML}{969896}
% \colorlet{CodeSymbol}{Ivory4!60!Gold4}

%% Color palette for this project
\colorlet{TJGreen}{SeaGreen1}
\colorlet{TJBlue}{SkyBlue1}
\colorlet{TJRed}{Pink1}
\colorlet{TJYellow}{NavajoWhite1}

%% Page color
% \RequirePackage{pagecolor}
% \pagecolor{TechJamDarkBackground}
% \color{white}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Captions ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[%
  margin=1pc,font={rm,up,md,footnotesize},labelfont={bf},labelsep=period,%
  format=plain,indention=1pc,justification=justified]{caption}
\RequirePackage{subcaption}
\captionsetup{compatibility=false}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Lists and enumerations ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\RequirePackage{alphalph}
\RequirePackage{multicol}
\setlist{%
  topsep=0pc,itemsep=0pc,partopsep=0.25pc,parsep=0.25pc,%
%   leftmargin=2pc,itemindent=0.25pc,listparindent=0.25in,%
%   labelindent=!,labelsep=0.5pc,%
}
% \setlist[1]{%
%   topsep=0.5pc,itemsep=0.5pc,partopsep=0.5pc,parsep=0.5pc%
% %   leftmargin=2pc,itemindent=0pc,%
% }
\setlist[description]{
%   leftmargin=2pc,itemindent=*,listparindent=0.25in,%
%   labelindent=0pc,labelsep=1pc,%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Headings and sections ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TODO
\RequirePackage{titlesec}
\setcounter{secnumdepth}{1}

\titleformat{\chapter}[display]{\fontsize{32pt}{32pt}\selectfont\bfseries\selectlanguage{thai}}{บทที่ \thechapter}{0pc}{}
\titleformat{\section}{\fontsize{20pt}{20pt}\selectfont\bfseries\selectlanguage{thai}}{\thesection}{1pc}{}
\titleformat{\subsection}{\lightfont\fontsize{16pt}{16pt}\selectfont\selectlanguage{thai}}{\thesubsection}{1pc}{}
\titleformat{\subsubsection}{\fontsize{12pt}{12pt}\selectfont\bfseries\selectlanguage{thai}}{\thesubsubsection}{1pc}{}

% \titleformat{\chapter}%
%   [display]% shape
%   {\relax\begin{fullwidth}}% format applied to label+text
%   {\huge\chapterfont\bfseries หมวดที่ \thechapter}% label
%   {1pc}% horizontal separation between label and title body
%   {\huge\chapterfont\bfseries}% before the title body
%   [\end{fullwidth}]% after the title body

% Define a new \question sectioning element
% \titleclass{\question}{straight}[\chapter]
% \newcounter{question}
% \titleformat{\question}[runin]{\relax}{\large\sectionfont\bfseries คำถามที่ \thequestion.}{0.5pc}{\large\sectionfont}
% \titlespacing*{\question}{0pt}{2.25pc plus 0.25pc minus 0.5pc}{0.5pc plus 0.25pc}
% \newrobustcmd{\questionautorefname}{คำถามที่}

% \titlelabel{\thetitle\qquad\selectlanguage{thai}}
% \newrobustcmd{\msec}{\vphantom{X}\llap{· }}
% \titleformat{\section}{\normalfont\fontsize{17pt}{17pt}\bfseries}{\thesection}{1em}{\selectlanguage{thai}}
% \titleformat{\subsection}{\normalfont\fontsize{14pt}{13pt}\bfseries}{\thesubsection}{1em}{\selectlanguage{thai}}
% \titleformat{\subsubsection}{\normalfont\fontsize{12pt}{11pt}\bfseries}{\thesubsubsection}{1em}{\selectlanguage{thai}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Page headers and footers ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{\fancyhf{}\fancyfoot[LE,RO]{\thepage}}
\renewrobustcmd{\headrulewidth}{0pt}
\renewrobustcmd{\footrulewidth}{0pt}
\pagestyle{plain}

%%%%%%%%%%%%%%%%%%%%%%
%% ---- Tables ---- %%
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{1pt}
\setlength{\lightrulewidth}{0.5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Text styles ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Underline styles
\RequirePackage{ulem}
\normalem

%% Verbatim mode
\RequirePackage{fancyvrb}
\DefineVerbatimEnvironment{plainvrb}{Verbatim}{fontfamily=FiraMono(0)}

%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Math mode ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareMathAlphabet{\mathbb}{U}{msb}{m}{n}
% \RequirePackage{amssymb}
% \RequirePackage{amsthm}
% \RequirePackage{IEEEtrantools}
% \RequirePackage{mathtools}
% \RequirePackage{chemarrow}
% \RequirePackage{adforn}  % Ornaments package
% \RequirePackage{textcomp}
% \RequirePackage{wasysym}
% \RequirePackage{aliascnt}
% \RequirePackage{cancel}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Math extra definitions ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define shorthands for mathematical sets
\newrobustcmd{\Algebraic}{\mathbb{A}}
\newrobustcmd{\Complex}{\mathbb{C}}
\newrobustcmd{\Field}{\mathbb{F}}
\newrobustcmd{\Natural}{\mathbb{N}}
\newrobustcmd{\Quotient}{\mathbb{Q}}
\newrobustcmd{\Real}{\mathbb{R}}
\newrobustcmd{\Zahlen}{\mathbb{Z}}

%% Define shorthand for overline
\newrobustcmd{\ol}{\overline}

%% Define shorthand for blocks
\newrobustcmd{\hlt}[2][LightGray!20]{%
  \ifmmode{\mathchoice%
      {\colorbox{#1}{$\displaystyle #2$}}%
      {\colorbox{#1}{$\textstyle #2$}}%
      {\colorbox{#1}{$\scriptstyle #2$}}%
      {\colorbox{#1}{$\scriptscriptstyle #2$}}}%
  \else%
      {\colorbox{#1}{#2}}%
  \fi}
\newrobustcmd{\rhlt}[1]{\hl[Red1!25]{#1}}
\newrobustcmd{\ghlt}[1]{\hl[Chartreuse3!25]{#1}}
\newrobustcmd{\bhlt}[1]{\hl[Blue1!10]{#1}}
\newrobustcmd{\yhlt}[1]{\hl[Yellow2!30]{#1}}

% Define some more math operators
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator*{\argmax}{arg{\hrsp}max}
\DeclareMathOperator*{\argmin}{arg{\hrsp}min}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Code listings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{listings}
\RequirePackage{lstfiracode}
\lstset{%
  % Basic Settings
  basicstyle=\ttfamily,%
  captionpos=b,%
  % Margins and Background
  xleftmargin=2.5pc,%
  xrightmargin=1.5pc,%
  frame=none,%
  framesep=0.5pc,%
  framextopmargin=0pc,%
  framexbottommargin=0pc,%
  framexleftmargin=0pc,%
  framexrightmargin=0pc,%
  % Spacing and Horizontal Flow
  showspaces=false,%
  showstringspaces=false,%
  showtabs=false,%
  tabsize=2,%
  breaklines=true,%
  columns=fullflexible,%
  keepspaces=true,%
  % Vertical Flow
  aboveskip=\bigskipamount,%
  belowskip=\medskipamount,%
  abovecaptionskip=\medskipamount,%
  belowcaptionskip=\smallskipamount,%
  lineskip=0.0001pt,
  % Line Numbers
  stepnumber=1,%
  numbers=left,%
  numbersep=1pc,%
  numberstyle=\ttfamily\color{LightGray},%
  % Special Keyword Format
  stringstyle=\color{CodeString},%
  commentstyle=\color{CodeComment},%
  identifierstyle=\color{CodeIdentifier},%
  keywordstyle=[1]{\bfseries\color{CodePrimaryKeyword}},%
  keywordstyle=[2]{\bfseries\color{CodeSecondaryKeyword}},%
  keywordstyle=[3]{\bfseries\color{CodeTertiaryKeyword}},%
  extendedchars=true}
\captionsetup[lstlisting]{margin={2pc,-3.00001pc},oneside}
\renewrobustcmd\lstlistingname{Source Code}
\newrobustcmd{\lstnumberautorefname}{Line}

\let\origthelstnumber\thelstnumber
\newrobustcmd*\SuppressNumber{%
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\relax%
        \advance\c@lstnumber-\@ne\relax}}
\newrobustcmd*\ReactivateNumber{%
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\origthelstnumber%
        \advance\c@lstnumber\@ne\relax}}
\newrobustcmd*\ActivateNumber[1]{%
    \setcounter{lstnumber}{\numexpr#1-1\relax}
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\origthelstnumber%
        \refstepcounter{lstnumber}}}
\newrobustcmd*\AlternateNumber[1]{%
    \lst@AddToHook{OnNewLine}{%
        \gdef\thelstnumber{#1}}}

\lstdefinelanguage{pseudocode}{%
    keywordstyle=[1]{\bfseries\color{CodePrimaryKeyword}},%
    keywordstyle=[2]{\bfseries\color{CodeSecondaryKeyword}},%
    keywordstyle=[3]{\bfseries\color{CodeTertiaryKeyword}},%
    morekeywords=[1]{%
        function,procedure,return,halt,terminate,exit,%
        for,each,to,downto,loop,while,do,repeat,until,break,continue,end,%
        if,then,else,elseif,case,matches},%
    morekeywords=[2]{%
        input,output,print,and,or,not,xor,div,mod,%
        is,in,max,min,sum,swap,floor,ceil},%
    morekeywords=[3]{true,false,empty,nil,lambda},%
    sensitive=false,%
    morestring=[b]",%
    morestring=[b]',%
    morecomment=[l]{\#},%
    literate=*%
        %% Single character
        {0}{{{\color{CodeNumber}{0}}}}1
        {1}{{{\color{CodeNumber}{1}}}}1
        {2}{{{\color{CodeNumber}{2}}}}1
        {3}{{{\color{CodeNumber}{3}}}}1
        {4}{{{\color{CodeNumber}{4}}}}1
        {5}{{{\color{CodeNumber}{5}}}}1
        {6}{{{\color{CodeNumber}{6}}}}1
        {7}{{{\color{CodeNumber}{7}}}}1
        {8}{{{\color{CodeNumber}{8}}}}1
        {9}{{{\color{CodeNumber}{9}}}}1
        {+}{{{\bfseries\color{CodeSymbol}{+}}}}1
        {-}{{{\bfseries\color{CodeSymbol}{-}}}}1
        {*}{{{\bfseries\color{CodeSymbol}{*}}}}1
        {/}{{{\bfseries\color{CodeSymbol}{/}}}}1
        {@}{{{\bfseries\color{CodeSymbol}{@}}}}1
        {:}{{{\bfseries\color{CodeSymbol}{:}}}}1
        {->}{{{\bfseries\color{CodeSymbol}{->}}}}2
        ,
    mathescape=false,%
    escapeinside={<\%}{\%>},%
}

%% Set default listing language
\lstset{language=pseudocode}
\newrobustcmd{\codecmt}{\commentfont\color{Comment}}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Datetime ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[datesep={-},timesep={:},showseconds=false,showzone=false]{datetime2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Lorem Ipsum ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{lipsum}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Drawings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\newrobustcmd*\choicecirc[1]{%
\begin{tikzpicture}[baseline=-0.3em]
\node[draw,circle,inner sep=1pt,minimum size=2.25ex](x) {\scriptsize\color{black!30}{#1}};
\end{tikzpicture}}
\newrobustcmd*\choicerect[1]{%
\begin{tikzpicture}[baseline=-0.35em]
\node[draw,rectangle,inner sep=1pt,minimum size=2ex](x) {\scriptsize\color{black!30}{#1}};
\end{tikzpicture}}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Commands ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\newrobustcmd{\tuu}{\hrsp–\hrsp}
\newrobustcmd{\techjam}{\textbf{\ltspc TECHJAM 2019}}
\newrobustcmd{\doctitle}[1]{%
\begin{center}
    \huge\bfseries
    #1
\end{center}}
\newrobustcmd{\copyrightnotice}{%
\begin{quote}
    \begin{center}
        \small\bfseries โปรดอ่าน
    \end{center}

    \footnotesize\setSpacing{1.3}
    เอกสารฉบับนี้รวมถึงข้อความและรูปภาพที่ปรากฏในเอกสารฉบับนี้ เป็นทรัพย์สินทางปัญญาของกสิกร บิซิเนส–เทคโนโลยี กรุ๊ป (KBTG)
    ตามพระราชบัญญัติลิขสิทธิ์ พุทธศักราช 2537 \;
    ไม่อนุญาตให้ผู้ใดนำส่วนใดส่วนหนึ่งหรือทั้งหมดของเอกสารฉบับนี้ไปคัดลอก ทำซ้ำ ดัดแปลง เผยแพร่ หรือส่งต่อเอกสารฉบับนี้แก่ผู้อื่นโดยเด็ดขาด \;
    โปรดเก็บรักษาข้อมูลในเอกสารนี้เป็นความลับ
\end{quote}}
\newrobustcmd{\creativecommonsnotice}{%
\noindent
\begin{minipage}{0.75\linewidth}
    \scriptsize\setSpacing{1.3}

    \noindent
    \llap{\textcopyright\;}สงวนลิขสิทธิ์ 2562\; กสิกร บิซิเนส{\tuu}เทคโนโลยี กรุ๊ป \\
    ตามพระราชบัญญัติลิขสิทธิ์ พุทธศักราช 2537

    \medskip\noindent
    เอกสารฉบับนี้ถูกเผยแพร่ภายใต้สัญญาอนุญาต Creative Commons Attribution–NonCommercial 4.0 In\-ter\-na\-tion\-al
    ซึ่งอนุญาตให้ทำซ้ำ\,แจกจ่าย\,หรือแสดงและนำเสนอเอกสารฉบับนี้ และสร้างงานดัดแปลงจากเอกสารฉบับนี้\;
    โดยต้องให้เครดิต\,แสดงที่มา\,และไม่ใช้เพื่อการค้า
    
    \medskip\noindent
    อ่านเงื่อนไขฉบับเต็มได้ที่\; \url{https://creativecommons.org/licenses/by-nc/4.0/} 

    \bigskip\noindent
    \includegraphics[width=0.190983\linewidth]{figures/by-nc.eps}

    \smallskip\noindent
    ติดต่อสอบถามหรือติดตามรายละเอียดเพิ่มเติมได้ที่\; \url{https://techjam.tech}
\end{minipage}}
