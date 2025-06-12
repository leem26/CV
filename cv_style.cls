\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[6/6/2013 custom CV class]
\LoadClass{article}
\usepackage[dvipsnames]{xcolor}
\RequirePackage{titlesec}
\titleformat{\section}       % Customise the \section command 
{\Large\scshape\raggedright\bf\color{Gray}} % Make the \section headers large (\Large),
                             % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}            % Can be used to give a prefix to all sections, like 'Section ...'
  {}                 % Can be used to insert code before the heading
  [\titlerule]       % Inserts a horizontal line after the heading
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
\newcommand{\datedsection}[2]{ %
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{ %
  \subsection[#1]{#1 \hfill \textcolor{blue}{#2}}%
}
\newcommand{\datedsubsubsection}[2]{ %
  \subsubsection[#1]{\textit{#1} \hfill #2}%
}
\newcommand{\name}[1]{
  \centerline{\huge{#1}}
}
\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
}

\usepackage[letterpaper, margin=0.9in]{geometry}
\usepackage{parskip}
\usepackage{changepage}
\usepackage{booktabs}
\usepackage{url} 
\usepackage{hyperref} 
\usepackage{etoolbox}
\usepackage{amsmath}
\usepackage{fontspec}
\setmainfont{Fira Sans}

\usepackage{csquotes}
\usepackage[american]{babel}
\usepackage[%
    backend=biber,
    style=numeric,
    citestyle=nature,
    bibstyle=nature,
    sorting=ymdt,
    maxbibnames=99,
    bibencoding=utf8
]{biblatex}
\addbibresource{pubs.bib}

\DeclareSortingScheme{ymdt}{
  \sort{
    \field{presort}
  }
  \sort[final]{
    \field{sortkey}
  }
  \sort[direction=descending]{
    \field{sortyear}
    \field{year}
  }
  \sort[direction=descending]{
    \field[padside=left,padwidth=2,padchar=0]{month}
    \literal{00}
  }
  \sort{
    \field{sortname}
    \field{author}
    \field{editor}
    \field{translator}
    \field{sorttitle}
    \field{title}
  }
  \sort[direction=descending]{
    \field[padside=left,padwidth=2,padchar=0]{day}
    \literal{00}
  }
  \sort{
    \field{sorttitle}
  }
  \sort{
    \field[padside=left,padwidth=4,padchar=0]{volume}
    \literal{0000}
  }
}

\DeclareBibliographyCategory{asterisk}



\newcommand{\makeauthorbold}[1]{%
  \DeclareNameFormat{author}{%
    \ifthenelse{\value{listcount}=1}
    {%
      {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\namepartfamily\addcomma\addspace \namepartgiveni}}{\namepartfamily\addcomma\addspace \namepartgiveni}}
      %
    }{\ifnumless{\value{listcount}}{\value{liststop}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni}}{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni\addcomma\isdot}}{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni\addcomma\isdot}}%
      }
    \ifthenelse{\value{listcount}<\value{liststop}}
    {\addcomma\space}
  }
}
\makeauthorbold{Lee}


