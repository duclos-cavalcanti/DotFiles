set syntax=latex
setlocal wrap
setlocal textwidth=90
setlocal spell spelllang=en_us

nnoremap <buffer> <leader>bold i<SPACE>\textbf{}<ESC>ha
nnoremap <buffer> <leader>ita i<SPACE>\textit{}<ESC>ha
nnoremap <buffer> <leader>enum i\begin{enumerate}<ENTER>\end{enumerate}<ESC>O<TAB>\item<SPACE>
nnoremap <buffer> <leader>item i\begin{itemize}<ENTER>\end{itemize}<ESC>O<TAB>\item<SPACE>
nnoremap <buffer> <leader>cite i<SPACE>\cite{}<ESC>ha
nnoremap <buffer> <leader>fig i\begin{figure}[htp!]<CR>\end{figure}<ESC>O<TAB>\begin{center}<CR>\end{center}<ESC>O<TAB>\includegraphics[width=1\textwidth]{}<CR>\caption{}<CR>\label{}<LEFT>
nnoremap <buffer> <leader>minip :read ~/.vim/config/custom/LateX/minipage.txt<CR>
nnoremap <buffer> <leader>chap i\chapter{}<Left>
nnoremap <buffer> <leader>sec i\section{}<Left>
nnoremap <buffer> <leader>sub i\subsection{}<Left>
nnoremap <buffer> <leader>subb i\subsubsection{}<Left>
nnoremap <buffer> <leader>gls i\gls{}<Left>
nnoremap <buffer> <leader>spa i\vspace{1cm}<ESC><Left>
nnoremap <buffer> <leader>ref i<SPACE>\ref{}<Left>
nnoremap <buffer> <leader>text i<SPACE>\texttt{}<Left>
nnoremap <buffer> <leader>per a\% 
