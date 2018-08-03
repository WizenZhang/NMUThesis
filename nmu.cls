%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 北方民族大学研究生毕业论文模板 - LaTeX 07-30-2018
%% %% 论文样式参考自《北方民族大学研究生学位论文格式和要求--院教字〔2003〕169号》
%% %% 本模板改写自《北京航空航天大学学术论文LaTeX模板》
%% %% 基于ctexbook
%% %%
%% %% 初始版本作者:
%% %%   Wizen Zhang (wizen zhang@163.com)
%% %% 参与修改:
%% %%
%% %% Versions:
%% %%   v1.0  Wizen Zhang (08-01-2018)
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{num}[2018/08/01 v1.1 NMU thesis class]
\typeout{This is LaTeX template num, Version 1.1 (based on CTex) 08-01-2018, by Wizen Zhang}
\usepackage{graphicx}
\def\NMUThesisVer{v1.1 08-01-2018}
\def\NMUThesis{%
 N%
 {\fontsize{0.8em}{\baselineskip}\selectfont
 \kern-.12em\lower.5ex\hbox{M}%
 \kern-.46em\raise.47ex\hbox{U}%
}
 \kern-.35emT%
 \kern-.22em\lower.5ex\hbox{H}%
 \kern-.08em E%
 \kern-.05em\lower.5ex\hbox{S}%
 \kern-.26em I%
 \kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}

% 引用ctexbook: 五号,1.5倍行距
\LoadClass[UTF8,zihao=5,linespread=1.5]{ctexbook}%1.5行间距

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
\RequirePackage{times}        % Times New Roman字体
\RequirePackage[T1]{fontenc}  % 修改默认文本和数学字形为Times New Roman字体
\RequirePackage{mathptmx}     % 修改默认文本和数学字形为Times New Roman字体
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 
\RequirePackage{enumitem}     %
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}      % 标题设置
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{listings}     % 代码环境
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{hyperref}     % 超连接
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释
\definecolor{gray}{RGB}{128,128,128}%定义页眉灰色
%% 选项
%% 论文类型
\DeclareOption{master}{\gdef\@thesis{master}}             % 学术硕士论文
\DeclareOption{professional}{\gdef\@thesis{professional}} % 专业硕士论文
\DeclareOption{doctor}{\gdef\@thesis{doctor}}             % 博士论文
\DeclareOption{thesis}{\ClassWarning{nmu}{%
  You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: master(default), professional, doctor.
}}
%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印 
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印

%% 论文版本设置（盲审版、最终版）
\DeclareOption{blind}{\gdef\@version{blind}} % 盲审版
\DeclareOption{ultimate}{\gdef\@version{ultimate}} % 最终版

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional }{\gdef\@thesis{professional }}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,oneside,blind,a4paper,sub4section}
\setcounter{secnumdepth}{5}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
% 数学定理：
% 以下定义数学定理环境默认风格为 nmu。
\newtheoremstyle{nmu}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').

\theoremstyle{nmu}
% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}
% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧打开 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}
\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}


% 封面
\renewcommand*\title[1]{\gdef\NMU@title{#1}}					% 论文中文标题
\newcommand*\englishtitle[1]{\long\gdef\NMU@englishtitle{#1}}	% 论文英文标题
\renewcommand*\author[1]{\gdef\NMU@author{#1}}					% 作者姓名
\newcommand*\classification[1]{\gdef\NMU@classification{#1}}	% 分类号
\newcommand*\serialnumber[1]{\gdef\NMU@serialnumber{#1}}		% 单位代码
\newcommand*\secretlevel[1]{\gdef\NMU@secretlevel{#1}}			% 密级
\newcommand*\studentnumber[1]{\gdef\NMU@studentnumber{#1}}		% 学号
\newcommand*\supervisor[1]{\gdef\NMU@supervisor{#1}}			% 指导教师
\newcommand*\applyclass[1]{\gdef\NMU@applyclass{#1}}		    % 申请的学位门类
\newcommand*\major[1]{\gdef\NMU@major{#1}}						% 专业名称
\newcommand*\research[1]{\gdef\NMU@research{#1}}				% 研究方向
\newcommand*\institute[1]{\gdef\NMU@institute{#1}}				% 所在学院
\newcommand*\submitdate[1]{\gdef\NMU@submitdate{#1}}			% 提交日期
% 页眉
\newcommand*\session[1]{\gdef\NMU@session{#1}}			% 毕业届
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  重定义字号命令
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     % 初号
\newcommand{\xiaochu}{\fontsize{32pt}{38pt}\selectfont}    % 小初
\newcommand{\yihao}{\fontsize{26pt}{36pt}\selectfont}    % 一号, 1.4倍行距
\newcommand{\xiaoyi}{\fontsize{24pt}{36pt}\selectfont}    % 小一号, 1.5倍行距
\newcommand{\erhao}{\fontsize{22pt}{28pt}\selectfont}    % 二号, 1.25倍行距
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}    % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}    % 三号, 1.5倍行距
\newcommand{\sansan}{\fontsize{16pt}{48pt}\selectfont}    % 三号, 3倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{22pt}\selectfont}    % 小三, 1.5倍行距
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}    % 四号, 1.5倍行距
\newcommand{\sierwu}{\fontsize{14pt}{35pt}\selectfont}    % 四号, 2.5倍行距
\newcommand{\banxiaosi}{\fontsize{13pt}{19.5pt}\selectfont}% 半小四, 1.5倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}    % 小四, 1.5倍行距
\newcommand{\xiaosier}{\fontsize{12pt}{24pt}\selectfont}    % 小四, 2倍行距
\newcommand{\dawuhao}{\fontsize{11pt}{11pt}\selectfont}    % 大五号, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}    % 五号, 单倍行距
\newcommand{\xiaowuhao}{\fontsize{9pt}{9pt}\selectfont}   %小五号，单倍行距

% 定义封面及标题页设置中常用的下划线命令（默认宽度90pt）
\renewcommand\ULthickness{0.7pt}			% 重新定义下划线的厚度
\newcommand\NMUunderline[2][90pt]{\uline{\hbox to #1{\hss#2\hss}}\hskip3pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
  punct=banjiao, % 半角
  autoindent=2,  % 缩进
  linestretch=1, % 行伸缩
}
% 部分标题修改
\ctexset{%
  contentsname={目~~~~录},
  listfigurename={图~清~单},
  listtablename={表~清~单},
}

\renewcommand{\contentsname}{\zihao{2} \heiti 目~~~~录}

% 标题样式修改
\ctexset{%
  chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
    format=\sansan \heiti \centering \thispagestyle{fancy},
    fixskip=true,
    beforeskip=19.27pt,
    afterskip=22.48pt,
    break=\clearpage,
  },
  section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
    format=\sierwu \heiti \raggedright,
    beforeskip=8.43pt,
    afterskip=11.24pt,
  },
  subsection={%条标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
    format=\xiaosier \heiti \raggedright,
    beforeskip=3.61pt,
    afterskip=3.61pt,
  },
  subsubsection={% 附加4级标题 : 小四号宋体加粗居左
    format=\zihao{-4} \songti \raggedright \bfseries,
  },
  paragraph={% 附加5级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  },
  subparagraph={% 附加6级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
% 打印留边平移5mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=30mm,bottom=25mm,inner=30mm,outer=25mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=30mm,bottom=25mm,left=30mm,right=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}%清空初始页眉页脚
	
% 设置目录格式
\titlecontents{chapter}[0pt]{\songti\zihao{4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\normalsize\contentspage}
\titlecontents{section}[2em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\normalsize\contentspage}
\titlecontents{subsection}[3em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\normalsize\contentspage}
\titlecontents{figure}[0pt]{\songti\zihao{-4}}{图~\thecontentslabel\quad}{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\normalsize\contentspage}
\titlecontents{table}[0pt]{\songti\zihao{-4}}{表~\thecontentslabel\quad}{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\normalsize\contentspage}


% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}
  
\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\DeclareCaptionFormat{tabfigformat}{\bf\songti\zihao{5}{#1~~#3}}
\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。 
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 设置参考文献格式
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true, 
  pdfsubject={NMU thesis},
  pdfcreator={LaTeXed~By~Wizen Zhang}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\clearautopage}{%右侧起新页
  \clearpage
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面
    \ifodd\c@page 
    \else
      \hbox{}
      \vspace*{\fill}
      \begin{center}
        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn \hbox{} \newpage \fi
    \fi
  }{}
}
\newcommand{\sethyper}{%设置连接应用颜色
  \hypersetup{%
    pdftitle={\NMU@title},
    pdfkeywords={\@keywordcn},
    pdfauthor={\NMU@author}
  }
  \ifthenelse{\equal{\@refcolor}{on}}{%
    \hypersetup{
      allcolors=black,
    }
  }{%
    \hypersetup{
      allcolors=black,
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
  \sethyper
}
\AfterEndPreamble{%
  \ifthenelse{\equal{\@version}{blind}}{%
	\makeblindcover }
  { \makecovercn
    \makestatementnmu}

  \def\headrule{}%此页不加页眉
  \fancyfoot[C]{\textcolor{gray}{\zihao{-5} \uppercase\expandafter{\romannumeral \thepage}}}
  \setcounter{page}{1}
  \abstructkeyword
  
  \makecontextlist
  
  
  \def\headrule{%页眉底部长条的样式
	\color{gray}{
		\hrule\@height\textwidth height 0.8mm\@width\textwidth\vskip0.3mm%粗条宽0.8mm，两条之间的空白0.3mm
		\hrule\@height\textwidth height 0.3mm\@width \textwidth\vskip 0pt}}%细条宽0.3mm
 	
  \renewcommand{\headrulewidth}{0.4pt}%页眉设置
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面打印
  	\fancyfoot[C]{}
  	\fancyfoot[RO]{\textcolor{gray}{\zihao{5}-\thepage-}}
  	\fancyfoot[LE]{\textcolor{gray}{\zihao{5}-\thepage-}}
  }{%
    \fancyfoot[C]{\textcolor{gray}{\zihao{5}-\thepage-}}
  }
  \ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{professional}}{%
      \fancyhead[C]{\textcolor{gray}{\zihao{-5}北方民族大学{\NMU@session}届硕士学位论文\hfill\leftmark}}
  }{}
  \ifthenelse{\equal{\@thesis}{doctor}}{%
      \fancyhead[C]{\textcolor{gray}{\zihao{-5}北方民族大学{\NMU@session}届博士学位论文\hfill\leftmark}}
  }{}
  \setcounter{page}{1}
}

%% 盲审封面
\newcommand{\makeblindcover}{% 盲审封面
	{\pdfbookmark[0]{盲审封面}{makeblindcover}
		\thispagestyle{empty}%此页不加页眉页脚
		\vspace{14mm}
		{\begin{center}
				\xiaosi \songti \noindent
				\makebox[4\ccwd][s]{盲审代码}：\NMUunderline[70pt]{}%
				\hfill 密级：\NMUunderline[70pt]{}   
			\end{center}   
		}
		\vspace{30mm}
		\begin{center}
			\bfseries \xiaochu \heiti {北方民族大学}\par
			{\xiaoyi \heiti {硕士学位论文}}\par	
		\end{center}		

    \parbox[t][3cm][t]{\textwidth}{
	  \begin{center}
		{\erhao\heiti {\NMU@title\hfill}\\}
	  \end{center}}
	\parbox[t][3cm][t]{\textwidth}{
	  \begin{center}
			{\sanhao{\NMU@englishtitle\hfill}\\}
      \end{center}}
			
	\parbox[t][9cm][c]{\textwidth}{\sihao\songti\hspace{2em}
		\begin{tabular}{ccl@{\extracolsep{2em}}l}
			~~ & 所在学院:& \underline{\makebox[13em]{\qquad {\NMU@institute} \qquad }}\\
			~~&专业名称:&\underline{\makebox[13em]{\qquad {\NMU@major} \qquad }}\\
			~~ & 研究方向:& \underline{\makebox[13em]{\qquad {\NMU@research} \qquad }}\\
			~~ & 完成日期:&\underline{\makebox[13em]{\qquad {%
						\NMU@submitdate} \qquad }}\\
		\end{tabular}} 
			
		
		
		\clearautopage
}}

%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecovercn}
 \thispagestyle{empty}%此页不加页眉页脚
  {\begin{center}
  	\wuhao \songti \noindent
  	\makebox[3\ccwd][s]{分类号}：{\NMU@classification}%
  	\hfill 单位代码：\makebox[8\ccwd][s]{\NMU@serialnumber}    
  	\\
  	\makebox[3\ccwd][s]{密级}：\NMU@secretlevel
  	\hfill \makebox[4\ccwd][s]{学号}：\makebox[8\ccwd][s]{\NMU@studentnumber}
  \end{center}   
  }
  \vspace{3mm}
  \begin{center}
	\includegraphics[width=25.4mm]{nmu_logo}\par
	\vspace{7.4mm}
	\chuhao \lishu{北方民族大学}\par
	\vspace{5mm}
	{\xiaoerhao \songti {硕士学位论文}}\par	
  \end{center}

  \parbox[t][3cm][t]{\textwidth}{
	\begin{center}
		{\erhao\heiti {\NMU@title\hfill}\\}
    \end{center}}
  \parbox[t][3cm][t]{\textwidth}{
	\begin{center}
		{\sanhao{\NMU@englishtitle\hfill}\\}
    \end{center}}

   % \extracolsep:将所有列在设定的表格宽度中均匀展开
   % 2em: 1em(当前字体中M的宽度)
	\parbox[t][10cm][c]{\textwidth}{\sihao\songti\hspace{1em}
 	  \begin{tabular}{ccl@{\extracolsep{2em}}l}
		~~&学\hfill 位\hfill 申\hfill 请\hfill 人:& \underline{\makebox[13em]{\qquad {\NMU@author} \qquad }}\\
		~~ & 指\hfill 导\hfill 教\hfill 师:&\underline{\makebox[13em]{\qquad \NMU@supervisor \qquad }}\\
		~~&申\hfill 请\hfill 的\hfill 学\hfill 位\hfill 门\hfill 类:&\underline{\makebox[13em]{\qquad {\NMU@applyclass} \qquad }}\\
		~~&专\hfill 业\hfill 名\hfill 称:&\underline{\makebox[13em]{\qquad {\NMU@major} \qquad }}\\
		~~ & 研\hfill 究\hfill 方\hfill 向:& \underline{\makebox[13em]{\qquad {\NMU@research} \qquad }}\\
		~~ & 所\hfill 在\hfill 学\hfill 院:& \underline{\makebox[13em]{\qquad {\NMU@institute} \qquad }}\\
		~~ & 论 \hfill 文\hfill 完\hfill 成\hfill 日\hfill 期:&\underline{\makebox[13em]{\qquad {%
					\NMU@submitdate} \qquad }}\\
	  \end{tabular}}

  \clearautopage
}}

\newcommand{\makestatementnmu}{% 北民大声明
{\pdfbookmark[0]{北民大声明}{makestatementnmu}
 \thispagestyle{empty}%此页不加页眉页脚
  \begin{center}
  	
  	\parbox[t][2cm][c]{\textwidth}{\erhao \heiti \centerline{独 创 性 声 明}} 
  	
  	\parbox[t][4cm][c]{\textwidth}{\xiaosi
  		\hspace{2em}本人声明所呈交的论文是我个人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北方民族大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。}
  	\parbox[t][39pt][c]{\textwidth}{}
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi \quad\enspace
  			研究生签名：\hspace{12em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}	
  \end{center}
  
  
  \begin{center}
  	
  	\parbox[t][2cm][c]{\textwidth}{}
  	
  	\parbox[t][2cm][c]{\textwidth}{ {\erhao \heiti \centerline
  			{关于学位论文使用授权的说明} } }
  	
  	\parbox[t][3cm][c]{\textwidth}{\xiaosi
  		\hspace{2em}本人完全了解北方民族大学有关保留、使用学位论文的规定，即：学校有权保留送交论文的复印件和磁盘，
  		允许论文被查阅和借阅，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。同意北方民族大学可以
  		用不同方式在不同媒体上发表、传播学位论文的全部或部分内容。}
  	%\songti-----------------------------------------------------------------修改
  	\parbox[t][2cm][c]{\textwidth}{
  		\hspace{2em}\banxiaosi\textbf{（保密的论文在解密后应遵守此规定）}}
  	
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi 
  			研究生签名：\hspace{12em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}
  	
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi 
  			导师签名：\hspace{13em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}
  \end{center}
  \clearautopage
}}


\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}
  \begin{spacing}{1.7}%1.5+0.2
    {\sanhao \heiti  \centerline{摘~~~~要}}
    {\xiaosi \songti ~\par
      \@abstrctcn \par ~\par
      {\sihao\heiti 关键字：} \@keywordcn
    }
    
    \clearpage
    %\ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
    {\zihao{3} \bfseries  \centerline{{Abstract}}}
    {\xiaosi  ~\par
      \@abstrcten \par ~\par
      {\sihao\bfseries Key words:} \@keyworden
    }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}\clearpage}
\newcommand{\makecontextlist}{% 目录
{\pdfbookmark[0]{目录}{makecontextlist}

  \tableofcontents
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on}}{%
      \clearpage
      \pdfbookmark[0]{图目录}{listoffigures}
      \listoffigures
      \clearpage
      \pdfbookmark[0]{表目录}{listoftables}
      \listoftables
    }{}
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}


\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false,chapter/format=\zihao{3} \heiti \centering}
  \chapter{#1}
}

\newcommand{\summary}{%结论
	\ctexset{chapter/numbering=false,chapter/format=\zihao{3} \heiti \centering}
	\chapter{结论}
}

\newcommand{\reference}{%参考文献
	\ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering}
	\addcontentsline{toc}{chapter}{参考文献}
}

\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering}
  \chapter{附录}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}

\newcommand{\acknowledgments}{%致谢（盲审版不显示）
  \ifthenelse{\equal{\@version}{ultimate}}{%
	\ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering}
	\chapter{致谢}}{}
  
}
\newcommand{\biography}{%个人简介（盲审版不显示）
  \ifthenelse{\equal{\@version}{ultimate}}{%
    \ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering}
    \chapter{个人简介}}{}
}

%% --END--
\endinput