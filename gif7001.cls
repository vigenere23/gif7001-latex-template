\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gif7001}[2020/09/18 GIF-7001 LaTeX class]
\LoadClass{article}

% NOTE : all commands must start with the prefix 'v' (for 'vision')
%        in order to prevent name clashing with other packages


%%% PACKAGES %%%

\usepackage[utf8]{inputenc}
\usepackage[margin=1.5in]{geometry}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{gensymb}
\usepackage{cancel}  % Cancel elements in math mode

% Units
\usepackage{siunitx}
\sisetup{group-separator = {\ }, output-decimal-marker = {,}, detect-inline-weight = text}


%%% PRESENTATION %%%

% student's name
%% en
\def\@vname{Student name}
\newcommand{\vname}[1]{
  \def\@vname{#1}
}
%% fr
\def\@vnom{Nom complet}
\newcommand{\vnom}[1]{
  \def\@vnom{#1}
}

% student's NI
\def\@vni{111 1XX XXX}
\newcommand{\vni}[1]{
  \def\@vni{#1}
}

% assignement's course (ulaval code like GIF-7001)
%% en
\def\@vcourse{GIF-7001}
\newcommand{\vcourse}[1]{
  \def\@vcourse{#1}
}
%% fr
\def\@vsigle{GIF-7001}
\newcommand{\vsigle}[1]{
  \def\@vsigle{#1}
}

% assignement's due date
%% en
\def\@vduedate{due date (in french)}
\newcommand{\vduedate}[1]{
  \def\@vduedate{#1}
}
% fr
\def\@vdate{date de remise}
\newcommand{\vdate}[1]{
  \def\@vdate{#1}
}

% assignement's title
%% en
\def\@vtitle{Assignement's title (in french)}
\newcommand{\vtitle}[1]{
  \def\@vtitle{#1}
}
%% fr
\def\@vtitre{Titre du travail}
\newcommand{\vtitre}[1]{
  \def\@vtitre{#1}
}

% short presentation
%% en
\newcommand{\vshort}{
    \noindent\textbf{
        \@vname\hfill\@vcourse\\
        \@vni\hfill\@vduedate
        \centering
        \section*{\@vtitle}\
    }
}
%% fr
\newcommand{\vcourt}{
    \noindent\textbf{
        \@vnom\hfill\@vsigle\\
        \@vni\hfill\@vdate
        \centering
        \section*{\@vtitre}\
    }
}


%%% MATH NOTATIONS %%%

% vector variable
%% usage : \vvec{v} where 'v' is the vector variable
\newcommand{\vvec}[1]{\underline{#1}}

% homogenous vector variable
%% usage : \vvech{v} where 'v' is the vector variable
\newcommand{\vvech}[1]{\underline{\widetilde{#1}}} % fr
\newcommand\vhvec\vvech % en

% matrice variable
%% usage : \vmat{R} where 'R' is the matrix variable
\newcommand{\vmat}[1]{\underline{\underline{#1}}}

% homogenous matrice variable
%% usage : \vmath{R} where 'R' is the matrix variable
\newcommand{\vmath}[1]{\underline{\underline{\widetilde{#1}}}} % fr
\newcommand\vhmat\vmath % en

% frames
%% usage : \vframe[A]{B} (to read 'from frame A to B')
%% usage : \vframe{B} (to read 'in frame A')
%% example : \vframe{A}\vvec{v} (to read 'vector v in frame A')
\newcommand{\vrep}[2][\ ]{\,_{#1}^{#2}} % fr
\newcommand\vframe\vrep % en
