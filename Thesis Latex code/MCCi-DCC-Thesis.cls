%% Class description
%% ==================================================================================
\ProvidesClass{MCCi-DCC-Thesis}[2016/04/01 Thesis Format for MCCi-DCC]
\NeedsTeXFormat{LaTeX2e}
%% ==================================================================================

%% Required packages
%% ==================================================================================
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{times}
\RequirePackage{emptypage}
\LoadClassWithOptions{report}
\newif\ifmasters
\mastersfalse
\DeclareOption{phd}{\mastersfalse}
\DeclareOption{masters}{\masterstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
%% ==================================================================================

%% Sets the margins
%% ==================================================================================
\if@twoside
	\setlength\oddsidemargin{36.1 pt}
	\setlength\evensidemargin{0 pt}
	\setlength\marginparwidth{40 pt} 
\else
	\setlength\oddsidemargin{36.1 pt}
	\setlength\evensidemargin{36.1 pt}
	\setlength\marginparwidth{40 pt}
\fi

\marginparsep 10pt
\topmargin -0.6in
\textheight 9.05in
\textwidth 6.18in
\parindent 0pt
\brokenpenalty = 10000
%% ==================================================================================

%% Allows printing on both sides of the paper so that the even page is really blank
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
	\clearpage
  	{\pagestyle{empty}\origdoublepage}%
}

%% Information about the author, dissertation and program
%% ================================================
\newcommand{\institution}[1]{\def\@institution{Instituto Tecnologico y de Estudios Superiores de Monterrey}}
\renewcommand{\title}[1]{\def\@title{#1}}
\renewcommand{\author}[1]{\def\@author{#1}}
\renewcommand{\month}[1]{\def\@month{#1}}
\renewcommand{\year}[1]{\def\@year{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\campus}[1]{\def\@campus{#1}}
\newcommand{\school}[1]{\def\@school{School of Engineering and Sciences}}
\newcommand{\documenttype}[1]{\def\@documenttype{#1}}
%% ================================================

%% Information about Committee Members
%% ================================================
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\advisorInstitution}[1]{\def\@advisorInstitution{#1}}
\newcommand{\coAdvisor}[1]{\def\@coAdvisor{#1}}
\newcommand{\coAdvisorInstitution}[1]{\def\@coAdvisorInstitution{#1}}
\newcommand{\committeeMemberA}[1]{\def\@committeeMemberA{#1}}
\newcommand{\committeeMemberAInstitution}[1]{\def\@committeeMemberAInstitution{#1}}
\newcommand{\committeeMemberB}[1]{\def\@committeeMemberB{#1}}
\newcommand{\committeeMemberBInstitution}[1]{\def\@committeeMemberBInstitution{#1}}
\newcommand{\committeeMemberC}[1]{\def\@committeeMemberC{#1}}
\newcommand{\committeeMemberCInstitution}[1]{\def\@committeeMemberCInstitution{#1}}
\newcommand{\committeeMemberD}[1]{\def\@committeeMemberD{#1}}
\newcommand{\committeeMemberDInstitution}[1]{\def\@committeeMemberDInstitution{#1}}
\newcommand{\associateDean}[1]{\def\@associateDean{#1}}
%% ================================================

%% Default values for variables
%% ================================================
\institution{}
\title{Title}
\author{Name}
\month{June}
\year{2018}
\campus{Monterrey}
\ifmasters
    \degree{Master of Science}
    \documenttype{thesis}
\else 
    \degree{Doctor of Philosophy}
    \documenttype{dissertation}
\fi
\campus{Monterrey}
\school{School of Engineering and Sciences}
\advisor{Advisor's name}
\advisorInstitution{Advisor's Institution}
%% If co-advisor is defined, then only three additional members of the committee are displayed
%\coAdvisor{Co-advisor's name}
%\coAdvisorInstitution{Co-advisor's Institution}
\committeeMemberA{First Committee Member's name}
\committeeMemberAInstitution{First Committee Member's institution}
\committeeMemberB{Second Committee Member's name}
\committeeMemberBInstitution{Second Committee Member's institution}
\committeeMemberC{Third Committee Member's name}
\committeeMemberCInstitution{Third Committee Member's institution}
\committeeMemberD{Fourth Committee Member's name}
\committeeMemberDInstitution{Fourth Committee Member's institution}
\associateDean{Associate Dean's name}
%% ================================================

%% Sets up the main first cover
%% ================================================
\newcommand{\insertCover} {
\begin{titlepage}
  	\thispagestyle{empty}
  	\begin{center}
  	    {\Large \@institution}\\
  	    \vspace*{1cm}
	    {\large \@campus\ Campus}\\
    	\vspace*{1cm}
		{\Large \@school}\\
		\vspace*{0.5cm}			
		\begin{figure}[h]
			\centerline{\includegraphics[width = 10cm]{escudo-itesm.png}}
		\end{figure}
		\vspace*{0.5cm}
		{\bf \large \@title}\\
		\vspace*{0.5cm}
		A \@documenttype\ presented by\\
		\vspace*{0.5cm}
		{\bf \Large \@author}\\
		\vspace*{0.5cm}	
		Submitted to the \\
		\@school\\
	    in partial fulfillment of the requirements for the degree of\\
		\vspace*{0.5cm}
		{\large \@degree}\\
		\vspace*{0.5cm}
		in\\
		\vspace*{0.5cm}
		{\large Computer Science}\\
		\vfill
    	Atizap\'{a}n de Zaragoza, Estado de M\'{e}xico, \@month, \@year
  	\end{center}
    \if@twoside
		\null
		\thispagestyle{empty}
		\cleardoublepage
  	\fi
  	\end{titlepage}
}
%% ================================================

%% Inserts the signatures page
%% ================================================
\newcommand{\insertSignaturePage} {
	\pagestyle{plain}
	\pagenumbering{roman}
	\setcounter{page}{1}
	\newpage
	\begin{center}
		{\large \@institution}\\
		\vspace*{0.5cm}
		Campus \@campus\\
		\vspace*{0.5cm}
		\school\\
		\vspace*{0.5cm}
   \end{center}

	The committee members, hereby, certify that have read the \@documenttype\ presented by \@author\ and that it is fully adequate in scope and quality as a partial requirement for the degree of \@degree\ in Computer Sciences.

    \ifmasters
	    \vspace*{2 cm}
	\else
	    \vspace*{0.75 cm}
	\fi
	\hspace*{3.5 in}\hrulefill\\
	\hspace*{0 cm} \hfill \@advisor\\
	\hspace*{0 cm} \hfill \@advisorInstitution\\
	\hspace*{0 cm} \hfill Principal Advisor
	
	\ifdefined\@coAdvisor
	    \vspace*{0.75 cm}
	    \hspace*{3.5 in}\hrulefill\\
	    \hspace*{0 cm} \hfill \@coAdvisor\\
	    \hspace*{0 cm} \hfill \@coAdvisorInstitution\\
	    \hspace*{0 cm} \hfill Co-Advisor
	\fi
	
	\vspace*{0.75 cm}
	\hspace*{3.5 in} \hrulefill\\
	\hspace*{0 cm} \hfill \@committeeMemberA\\
	\hspace*{0 cm} \hfill \@committeeMemberAInstitution\\
	\hspace*{0 cm} \hfill Committee Member
	
	\vspace*{0.75 cm}
	\hspace*{3.5in}\hrulefill\\
	\hspace*{0cm} \hfill \@committeeMemberB\\
	\hspace*{0cm} \hfill \@committeeMemberBInstitution\\
	\hspace*{0cm} \hfill Committee Member
	
	\ifmasters
	%\else
	\vspace*{0.75 cm}
	\hspace*{3.5in}\hrulefill\\
	\hspace*{0cm} \hfill \@committeeMemberC\\
	\hspace*{0cm} \hfill \@committeeMemberCInstitution\\
	\hspace*{0cm} \hfill Committee Member
	\else
	
	\ifdefined\@coAdvisor
	\else
	    \vspace*{0.75 cm}
	    \hspace*{3.5in}\hrulefill\\
	    \hspace*{0cm} \hfill \@committeeMemberD\\
	    \hspace*{0cm} \hfill \@committeeMemberDInstitution\\
	    \hspace*{0cm} \hfill Committee Member
	\fi
	\fi
	\ifmasters
	    \vspace*{3 cm}
	\else 
	    \vspace*{0.5 cm}
	\fi
	\begin{center}
    	\hspace*{1.5in} \hrulefill \hspace*{1.5in} \\
    	{\@associateDean}\\
    	Associate Dean of Graduate Studies\\
    	\@school
	\end{center}	
	\vfill
	\begin{center}
		Atizap\'{a}n de Zaragoza, Estado de M\'{e}xico, \@month, \@year
	\end{center}
	\if@twoside
		\clearemptydoublepage
	\fi 
}
%% ================================================

%% Inserts the authorship declaration page
%% ================================================
\newcommand{\insertDeclaration} {
	\newpage
	\begin{center}
    	{\bf \LARGE Declaration of Authorship}
	\end{center}	
	\vspace*{1.5cm}
	I, \@author, declare that this \@documenttype\ titled, \@title\ and the work presented in it are my own. I confirm that:

	\begin{itemize}
		\item This work was done wholly or mainly while in candidature for a research degree at this University.
		\item Where any part of this \@documenttype\ has previously been submitted for a degree or any other qualification at this University or any other institution, this has been clearly stated.	
		\item Where I have consulted the published work of others, this is always clearly attributed.
		\item Where I have quoted from the work of others, the source is always given. With the exception of such quotations, this \@documenttype\ is entirely my own work.
		\item I have acknowledged all main sources of help.
		\item Where the \@documenttype\ is based on work done by myself jointly with others, I have made clear exactly what was done by others and what I have contributed myself.	
	\end{itemize}

	\vspace*{1.5in} 
	\hspace*{3.45in}\hrulefill\\
	\hspace*{0cm} \hfill \@author\\
	\hspace*{0cm} \hfill Atizap\'{a}n de Zaragoza, Estado de M\'{e}xico, \@month, \@year\\
	\vfill
	\begin{center}
		\copyright \@year\ by \@author\\
		All Rights Reserved
	\end{center}
	\if@twoside
		\clearemptydoublepage
	\fi  
}
%% ================================================

%% Inserts the dedication page
%% ================================================
\newcommand{\insertDedication}[1] {
	\newpage
	\begin{center}
   		{\LARGE Dedication}\\		
	\end{center}
	\vspace*{1.5cm}
	\input{#1}
	\if@twoside
		\clearemptydoublepage
	\fi
}
%% ================================================

%% Inserts the acknowledgements page
%% ================================================
\newcommand{\insertAcknowledgements}[1] {
	\newpage
	\parindent 5ex
	\begin{center}
	   	{\LARGE Acknowledgements}
	\end{center}
	\vspace*{1.5cm}
	\input{#1}
	\if@twoside
		\clearemptydoublepage
	\fi
}
%% ================================================

%% Inserts the abstract
%% ================================================
\newcommand{\insertAbstract}[1] {
	\newpage
	\addcontentsline{toc}{chapter}{Abstract}
	\parindent 5ex
	\begin{center}
   		{\Large \textbf{\@title \\
			by\\
   			\@author\\
	   		\vspace*{0.7cm}
   			Abstract}
   		}
	\end{center}
	\vspace*{0.7cm}
	\input{#1}
	\if@twoside
		\clearemptydoublepage
	\fi
}
%% ================================================

%% Inserts the tables of contents, tables and figures
%% ================================================
\newcommand{\contents} {
	\newpage
	\listoffigures
	\addcontentsline{toc}{chapter}{List of Figures}
	\if@twoside
		\clearemptydoublepage
	\fi
	\newpage
	\listoftables
	\addcontentsline{toc}{chapter}{List of Tables}	
	\if@twoside
		\clearemptydoublepage
	\fi
	\newpage
	\tableofcontents
	\if@twoside
		\clearemptydoublepage
	\fi
}
%% ================================================

%% Sets up the document for the contents
%% ================================================
\newcommand{\mainMatter} {
   \newpage
   \pagestyle{headings}
   \pagenumbering{arabic}
   \setcounter{page}{1}
}
%% ================================================

%% Inserts a chapter or an appendix
%% ================================================
\newcommand{\insertChapter}[1] {
	\input{#1}
	\if@twoside
		\clearemptydoublepage	
	\fi
}
%% ================================================

%% Inserts the bibliography
%% ================================================
\newcommand{\insertBibliography}[1] {
	\bibliographystyle{acm}
	\bibliography{#1}
	\addcontentsline{toc}{chapter}{Bibliography}
	\if@twoside
		\clearemptydoublepage	
	\fi
}
%% ================================================

%% Inserts the author's vita
%% ================================================
\newcommand{\insertVita}[1]{
	\newpage
	\thispagestyle{empty}
	\begin{center}
	   	{\LARGE Curriculum Vitae}
	\end{center}
	\vspace*{1.5cm}
	\input{#1}
	
	\vfill
	
	This document was typed in using {\LaTeXe}\footnote{The template \texttt{MCCi-DCC-Thesis.cls} used to set up this document was prepared by the Research Group with Strategic Focus in Intelligent Systems of Tecnol\'{o}gico de Monterrey, Monterrey Campus.} by {\@author}.
	
	\if@twoside
		\clearemptydoublepage	
	\fi
}
%% ================================================