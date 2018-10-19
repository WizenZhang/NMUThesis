%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 北方民族大学学位论文LaTeX模板 
%% %% 论文样式参考自《北方民族大学研究生学位论文格式和要求--院教字〔2003〕169号》
%% %% 本模板改写自《北京航空航天大学学术论文LaTeX模板》
%% %% 部分样例参考《浙江大学研究生硕士(博士)学位论文LaTeX模板》
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{num}[2018/10/14 v4.0 NMU thesis class]
\typeout{This is LaTeX template num, Version 4.0 (based on CTex) 2018/10/14, by Wizen Zhang}
\usepackage{graphicx}
\def\NMUThesisVer{v4.0 2018/10/14}
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

% 引用ctexbook: 五号,1.5倍行距，1.3为与word生成的PDF进行对比所得
\LoadClass[UTF8,zihao=5,linespread=1.3]{ctexbook}

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
%\RequirePackage{subfigure}   % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{subcaption}   % 并排图形。subfigure、subfig与subcaption不兼容
\RequirePackage[stable,perpage,symbol*]{footmisc}% 对脚注样式的控制功能。
\RequirePackage{array}        % 表格处理必备宏包
\RequirePackage{enumitem}     %
\RequirePackage{booktabs}     % 表格上下粗线 
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{tabu}         % 制表宏包，推荐使用，不使用其他制表宏包。
\RequirePackage{tikz}         % 流程图
\RequirePackage{caption}      % 标题设置
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{algorithmic}  % 算法环境
\RequirePackage{listings}     % 代码环境
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{hyperref}     % 超连接
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{xcolor} 
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释
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

%% 学科设置（文史类、理工类）
\DeclareOption{MA}{\gdef\@subject{MA}} % 文史类
\DeclareOption{MS}{\gdef\@subject{MS}} % 理工类

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional }{\gdef\@thesis{professional }}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}
\DeclareOption{Blind}{\gdef\@printtype{blind}}
\DeclareOption{Ultimate}{\gdef\@printtype{ultimate}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,oneside,blind,MS,a4paper,sub4section}
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

% 代码环境 frame=single无阴影
\lstset{numbers=left,
	basicstyle=\small\ttfamily,
	numberstyle=\tiny,
	keywordstyle=\color{black}\bfseries,
	commentstyle=\color{gray},
	frame=shadowbox,
	captionpos=b, 
	rulesepcolor=\color{red!20!green!20!blue!20},
	escapeinside=``,
	xleftmargin=2em,
	xrightmargin=2em, 
	aboveskip=1em}

% 流程图
\usetikzlibrary{arrows,shapes,chains}
%开始结束框
\tikzstyle{startstop} = [rectangle,rounded corners, minimum width=3cm,minimum height=1cm,text centered, draw=black]
%输入输出框
\tikzstyle{io} = [trapezium, trapezium left angle = 70,trapezium right angle=110,minimum width=3cm,minimum height=1cm,text centered,draw=black]
%进程框
\tikzstyle{process} = [rectangle,minimum width=3cm,minimum height=1cm,text centered,text width =3cm,draw=black]
%判断框
\tikzstyle{decision} = [diamond,minimum width=3cm,minimum height=1cm,text centered,draw=black]
%定义箭头
\tikzstyle{arrow} = [thick,->,>=stealth]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页
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

% 宋体的中文加粗 
\setCJKfamilyfont{zhsong}[AutoFakeBold = {2.17}]{SimSun}
\renewcommand*{\songti}{\CJKfamily{zhsong}}

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
\ifthenelse{\equal{\@subject}{MS}}{% 理工类
  \ctexset{%设置标题的格式
  	chapter={%章标题 : 三号黑体居中 3倍行间距 另起新页
  	format=\sansan \heiti \centering \thispagestyle{fancy},%此页添加页眉页脚
  	fixskip=true,
  	beforeskip=4pt,%与word生成的PDF进行对比所得
  	afterskip=28pt,%与word生成的PDF进行对比所得
  	break=\clearpage,
	},
	section={%节标题 : 四号黑体居左 2.5倍行间距
	 	format=\sierwu \heiti \raggedright,
	 	fixskip=true,
	 	beforeskip=28pt,%与word生成的PDF进行对比所得
	 	afterskip=24pt,%与word生成的PDF进行对比所得
	},
	subsection={%条标题 : 小四号黑体居左 2倍行间距
	 	format=\xiaosier \heiti \raggedright,
	 	fixskip=true,
	 	beforeskip=24pt,%与word生成的PDF进行对比所得
	 	afterskip=20pt,%与word生成的PDF进行对比所得
	},
	subsubsection={% 附加4级标题 : 五号宋体居左
	format=\wuhao \songti \raggedright,
	fixskip=true,
	beforeskip=20pt,
	afterskip=20pt,
	},
	paragraph={% 附加5级标题 : 五号宋体居左
	format=\wuhao \songti \raggedright,
	fixskip=true,
	beforeskip=20pt,
	afterskip=20pt,
	},
	subparagraph={% 附加6级标题 : 五号宋体居左
	format=\wuhao \songti \raggedright,
	fixskip=true,
	beforeskip=20pt,
	afterskip=20pt,
	}
  }
}{
  \ifthenelse{\equal{\@subject}{MA}}{% 文史类
  	\ctexset{%设置标题的格式
  		chapter={%章标题 : 三号黑体居中 3倍行间距 另起新页
  			format=\sansan \heiti \centering \thispagestyle{fancy},%此页添加页眉页脚
  			fixskip=true,
  			beforeskip=4pt,%与word生成的PDF进行对比所得
  			afterskip=28pt,%与word生成的PDF进行对比所得
  			break=\clearpage,
  		},
  		section={%节标题 : 四号黑体居左 2.5倍行间距
  			format=\sierwu \heiti \centering,
  			name = {第,节},
  			number = \chinese{section},
  			fixskip=true,
  			beforeskip=28pt,%与word生成的PDF进行对比所得
  			afterskip=24pt,%与word生成的PDF进行对比所得
  		},
  		subsection={%条标题 : 小四号黑体居左 2倍行间距
  			format=\xiaosier \heiti \raggedright,
  			name = {\hspace{2em},、},%首行缩进2字符
  			number = \chinese{subsection},
  			fixskip=true,
  			beforeskip=24pt,%与word生成的PDF进行对比所得
  			afterskip=20pt,%与word生成的PDF进行对比所得
  		},
		subsubsection={% 附加4级标题 : 五号宋体居左
		format=\wuhao \songti \raggedright,
		name = {\hspace{2em}（,）},%首行缩进2字符
		number = \chinese{subsubsection},
		fixskip=true,
		beforeskip=20pt,
		afterskip=20pt,
		},
		paragraph={% 附加5级标题 : 五号宋体居左
		format=\wuhao \songti \raggedright,
		name = {\hspace{2em},.},%首行缩进2字符
		number = \arabic{paragraph},
		fixskip=true,
		beforeskip=20pt,
		afterskip=20pt,
		},
		subparagraph={% 附加6级标题 : 五号宋体居左
		format=\wuhao \songti \raggedright,
		name = {\hspace{2em}（,）},%首行缩进2字符
		number = \arabic{subparagraph},
		fixskip=true,
		beforeskip=20pt,
		afterskip=20pt,
		}
  	  }
   }{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
% 打印留边平移5mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面打印
  \geometry{left=30mm,right=25mm,top=30mm,bottom=25mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面打印
    \geometry{left=25mm,right=25mm,top=30mm,bottom=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}%清空初始页眉页脚

% 设置[独创性声明和使用授权书]、[致谢]与[个人简介]显示条件（盲审版不显示） 
\def\show{Y} %显示条件
\ifthenelse{\equal{\@version}{ultimate}}{
	\def\Show{Y}}{\def\Show{N}}

% 目录显示设置：\titlecontents{章节名称}[左端距离]{标题字体、与上文间距等}{标题序号}{空}{引导符和页码}[与下文间距]
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

% 设置目录深度
% 当深度为1时，对应着2级标题，即章和节 (chapter1 和 1.1、1.2)；
% 当深度为2时，对应着章、节、小节 (chapter1、1.2、1.2.1)。
\setcounter{tocdepth}{1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 浮动体相关定义
% 设置浮动环境标题的字体大小。根据学位论文格式要求，插图和表格标题字体需要比正文
% 字体略小。
\captionsetup{%
	format=hang,
	labelsep=quad,		% 去掉图表号后的冒号。图序与图名文字之间空一个汉字宽度。
	skip=10pt,			% 标题与图标之间空10pt距离。
	font=small,			% 标题字体比正文小一号，这里取small。
	width=.75\textwidth}% 标题最大宽度为0.75倍正文宽度。

% 根据学位论文格式要求，表格的标题必须位于表格上方，插图的标题必须位于插图下方。
\captionsetup[table]{position=above}
\captionsetup[figure]{position=below}

%% 以下为设置浮动对象和文字之间的距离。
% 版心顶部或者版心底部浮动体之间的垂直距离，默认为12pt plus 2pt minus 2pt。
\setlength{\floatsep}{12bp \@plus4pt \@minus1pt}

% 文本行之间浮动体（使用h位置选项）与上下文之间的距离，默认为12pt plus 2pt minus
% 2pt。
\setlength{\intextsep}{12bp \@plus4pt \@minus2pt}

% 版心顶部或底部的浮动体与文本之间的距离，默认为12pt plus 2pt minus 2pt。
\setlength{\textfloatsep}{12bp \@plus4pt \@minus2pt}

% 浮动页中，版心顶部的浮动体与版心顶边之间的距离，默认为0pt plus 1fil。
\setlength{\@fptop}{0bp \@plus1.0fil}

% 浮动页中浮动体直接的距离，默认为8pt plus 2fil。
\setlength{\@fpsep}{8bp \@plus2.0fil}

% 浮动页中，版心底部的浮动体与版心底边之间的距离，默认为0pt plus 1fil。
\setlength{\@fpbot}{0bp \@plus1.0fil}

%% 下面这组命令使浮动对象的缺省值稍微宽松一点，从而防止幅度对象占据过多的文本页
%% 面，也可以防止在很大空白的浮动页上放置很小的图形。
% 默认情况下，LaTeX要求每页的文字至少占据 20%，否则该页就只单独放置一个浮动环境。
% 而这通常不是我们想要的。我们将这个要求降低到 5%。
\renewcommand{\textfraction}{0.05}
% 在一文本页中，被置于版心顶部的所有浮动体的高度与版心高度的最大比值，默认为0.7，
% 这里修改为0.7，任何造成高度超过版心高度70% 的浮动体都被将阻止置于当前版心顶部。
\renewcommand{\topfraction}{0.7}
% 同上，只不过变成了版心底部，默认为0.3.
\renewcommand{\bottomfraction}{0.5}
% 在任意一个“浮动页”中，所有的浮动体高度与版心的高度的最小比值，默认为 0.5，这里
% 设置成0.85。因此，浮动页中空白与版心的比值不会超过1-\floatpagefraction。
\renewcommand{\floatpagefraction}{0.0}

%设置“图1.1”、“表2.2”为“图1-1”、“表2-2”
\renewcommand {\thetable} {\thechapter{}-\arabic{table}}
\renewcommand {\thefigure} {\thechapter{}-\arabic{figure}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---------- 脚注样式 ----------
% 使用footmisc宏包和pifont宏包设置符合 GB/T 7713.1-2006 规范的脚注样式。注意，由
% 于pifont宏包提供的特殊符号的限制，一页之中最多只能有10个脚注。
% 这些命令设置跟脚注设置方法思路全都引用自南京大学计算机科学与技术系胡海星编写的
% 《NJU-Thesis:南京大学学位论文XeLaTeX模板》v1.1.18 (2015/7/16)版本。
\DefineFNsymbols*{circlednumber}[text]{%
	{\ding{192}} %
	{\ding{193}} %
	{\ding{194}} %
	{\ding{195}} %
	{\ding{196}} %
	{\ding{197}} %
	{\ding{198}} %
	{\ding{199}} %
	{\ding{200}} %
	{\ding{201}}}
\setfnsymbol{circlednumber}
% 脚注部分需要修改，段落部分单倍行距。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
  pdfcreator={LaTeXed~By~Wizen Zhang(https://github.com/WizenZhang/NMUThesis)}
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
      \thispagestyle{empty}%此页不加页眉页脚
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
      allcolors=blue,
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
  \ifthenelse{\equal{\Show{}}{\show{}}}{ 
	\makecovercn
	\makestatementnmu}%显示最终版
   {\makeblindcover  }%显示盲审版

  \def\headrule{}%此页不加页眉
    \ifthenelse{\equal{\@printtype}{twoside}}{% 双面打印
  	\fancyfoot[C]{}
  	\fancyfoot[RO]{\zihao{-5} \uppercase\expandafter{\romannumeral \thepage}}
  	\fancyfoot[LE]{\zihao{-5} \uppercase\expandafter{\romannumeral \thepage}}
  }{%
  	\fancyfoot[C]{\zihao{-5} \uppercase\expandafter{\romannumeral \thepage}}
  }
  
  \setcounter{page}{1}
  \abstructkeyword
 
  \makecontextlist
   
  \def\headrule{%页眉底部长条的样式
	{\hrule\@height\textwidth height 0.8mm\@width\textwidth\vskip0.3mm%粗条宽0.8mm，两条之间的空白0.3mm
		\hrule\@height\textwidth height 0.3mm\@width \textwidth\vskip 0pt}}%细条宽0.3mm
 	
  \renewcommand{\headrulewidth}{0.4pt}%页眉设置
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面打印
  	\fancyfoot[C]{}
  	\fancyfoot[RO]{\zihao{5}-\thepage-}
  	\fancyfoot[LE]{\zihao{5}-\thepage-}
  }{%
    \fancyfoot[C]{\zihao{5}-\thepage-}
  }
  \ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{professional}}{%
      \fancyhead[C]{\zihao{-5}北方民族大学{\NMU@session}届硕士学位论文\hfill\leftmark}
  }{}
  \ifthenelse{\equal{\@thesis}{doctor}}{%
      \fancyhead[C]{\zihao{-5}北方民族大学{\NMU@session}届博士学位论文\hfill\leftmark}
  }{}
  \setcounter{page}{1}
}

%% 盲审封面
\newcommand{\makeblindcover}{% 盲审封面
	{\pdfbookmark[0]{盲审封面}{makeblindcover}
		\thispagestyle{empty}%此页不加页眉页脚
		{\begin{center}
				\xiaosi \songti \noindent
				\makebox[4\ccwd][s]{盲审代码}：\NMUunderline[70pt]{}%
				\hfill 密级：\NMUunderline[70pt]{}   
			\end{center}   
		}
		\vspace{30mm}
		\begin{center}
			\includegraphics{nmu.pdf}\par
			\vspace{4.5pt}
			\includegraphics{thesis.pdf}	
		\end{center}		
		\begin{spacing}{1.3}%1.5倍行距，1.3为与word生成的PDF进行对比所得
			\parbox[t][3cm][t]{\textwidth}{
				\begin{center}
					\bfseries{\erhao\songti {\NMU@title\hfill}\\}
			\end{center}}
			\parbox[t][3cm][t]{\textwidth}{
				\begin{center}
					{\xiaoerhao{\NMU@englishtitle\hfill}\\}
			\end{center}}
			
			\parbox[t][10cm][c]{\textwidth}{\xiaosan\songti\hspace{2em}
				\begin{tabular}{ccl@{\extracolsep{2em}}l}
					~~ & 所在学院:& \underline{\makebox[13em]{\qquad {\NMU@institute} \qquad }}\\
					~~&专业名称:&\underline{\makebox[13em]{\qquad {\NMU@major} \qquad }}\\
					~~ & 研究方向:& \underline{\makebox[13em]{\qquad {\NMU@research} \qquad }}\\
					~~ & 完成日期:&\underline{\makebox[13em]{\qquad {%
								\NMU@submitdate} \qquad }}\\
			\end{tabular}} 
		\end{spacing}		
		
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
  \begin{spacing}{1.3}%1.5倍行距，1.3为与word生成的PDF进行对比所得
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
  
	\parbox[t][8.5cm][c]{\textwidth}{\sihao\songti\hspace{1em}
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
   \end{spacing}
  \clearautopage
}}

\newcommand{\makestatementnmu}{% 北民大声明
{\pdfbookmark[0]{北民大声明}{makestatementnmu}
 \thispagestyle{empty}%此页不加页眉页脚
 \begin{spacing}{1.3}%1.5倍行距，1.3为与word生成的PDF进行对比所得
  \begin{center}	
  	\parbox[t][3cm][c]{\textwidth}{\erhao \heiti \centerline{独 创 性 声 明}} 
  
  	\parbox[t][4cm][c]{\textwidth}{\xiaosi
  		\hspace{2em}本人声明所呈交的论文是我个人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北方民族大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。}
  	\parbox[t][39pt][c]{\textwidth}{}
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi \quad\enspace
  			研究生签名：\hspace{12em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}	
  \end{center}
  
  
  \begin{center}
  	
  	\parbox[t][1cm][c]{\textwidth}{}
  	
  	\parbox[t][3cm][c]{\textwidth}{ {\erhao \heiti \centerline
  			{关于论文使用授权的说明} } }
  	
  	\parbox[t][3cm][c]{\textwidth}{\xiaosi
  		\hspace{2em}本人完全了解北方民族大学有关保留、使用学位论文的规定，即：学校有权保留送交论文的复印件和磁盘，允许论文被查阅和借阅，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。同意北方民族大学可以用不同方式在不同媒体上发表、传播学位论文的全部或部分内容。}
  	%\songti-----------------------------------------------------------------修改
  	\parbox[t][2cm][c]{\textwidth}{
  		\hspace{2em}\banxiaosi\textbf{（保密的学位论文在解密后应遵守此协议）}}
  	
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi 
  			研究生签名：\hspace{12em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}
  	\parbox[t][24pt][c]{\textwidth}{}
  	\parbox[t][1cm][b]{\textwidth}{{\songti \xiaosi 
  			导师签名：\hspace{13em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日}}
  \end{center}
 \end{spacing}
  \clearautopage
}}

\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}
  \begin{spacing}{1.3}%1.5倍行距，1.3为与word生成的PDF进行对比所得
    {\sanhao \heiti  \centerline{摘~~~~要}}
    {\xiaosi \songti ~\par
      \@abstrctcn \par ~\par
      \noindent {\sihao \bfseries{\songti 关键字：}} \@keywordcn %关键词行不缩进
    }
    
    \clearpage
    %\ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
    {\zihao{3} \bfseries  \centerline{{Abstract}}}
    {\xiaosi  ~\par
      \@abstrcten \par ~\par
      \noindent {\sihao\bfseries Key words:} \@keyworden %关键词行不缩进
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

\renewcommand{\baselinestretch}{1.85}%伸展因子，1.5倍行距，1.3为与word生成的PDF进行对比所得
\setlength{\baselineskip}{10pt} %行基线间距。
\setlength{\lineskiplimit}{1pt}%当两行字之间的距离小于\lineskiplimit时，行距自动设为\lineskip。
\setlength{\parskip}{0pt}%部分段间距。

\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false,chapter/format=\zihao{3} \heiti \centering
  	\thispagestyle{fancy}}%此页添加页眉页脚
  \chapter{#1}
}

\newcommand{\summary}{%结论
	\ctexset{chapter/numbering=false,chapter/format=\zihao{3} \heiti \centering
	\thispagestyle{fancy}}%此页添加页眉页脚
	\chapter{结论}
}

\newcommand{\reference}{%参考文献
	\ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering
	\thispagestyle{fancy}}%此页添加页眉页脚
	
	\ifthenelse{\equal{\@printtype}{twoside}}{% 双面打印
		\cleardoublepage
	}{%
		\clearpage
	}	
	\phantomsection%使用了hyperref宏包来生成PDF文件的书签链接
	\addcontentsline{toc}{chapter}{参考文献}
}

\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering
  \thispagestyle{fancy}}%此页添加页眉页脚
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

\newcommand{\acknowledgments}{%致谢	
	\ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering
	\thispagestyle{fancy}}%此页添加页眉页脚
	\ifthenelse{\equal{\@version}{ultimate}}{%（盲审版不显示）	
	\chapter{致谢}}{}
}
\newcommand{\biography}{%个人简介
	\ctexset{chapter/numbering=false,chapter/format=\sansan \heiti \centering
	\thispagestyle{fancy}}%此页添加页眉页脚
    \ifthenelse{\equal{\@version}{ultimate}}{%（盲审版不显示）  
    \chapter{个人简介}}{}
}

%% --END--
\endinput