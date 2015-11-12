
" RÃ©glages spÃ©cifiques gVim




" map \p <ESC><ESC>:w<CR>:!pdflatex --synctex=1 %<.tex<CR><CR> <ESC>:!okular %<.pdf &<CR>

" Largeur de texte standard
set tw=72

nmap -u <Plug>UnCommentLines
vmap -u <Plug>UnCommentLines

nmap gw <Plug>FormatLines



" Commentaire en LaTeX
vmap ,com :s/^/%/<CR>
" TeX, LaTeX
" imap ,tex \TeX{}
" imap ,la \LaTeX{}

" Euro
imap ,eu \euro{}

" Insertion fraction
imap ,fr \dfrac{}{}<ESC>2hi
imap ,tfr \tfrac{}{}<ESC>2hi



" imap ,t <Esc>:Ei  



" Taille math standard
"imap ,dst \displaystyle{}<ESC>i
"vmap ,dst s\displaystyle{<ESC>pa}


" Insertion d'une figure
"imap ,igr \includegraphics{}<ESC>i
"vmap ,igr s\includegraphics{<ESC>pa}

"imap ,ppr \parpic[r]{\includegraphics{}}<ESC>hi
"imap ,ppl \parpic[l]{\includegraphics{}}<ESC>hi

"vmap ,ppr s\parpic[r]{\includegraphics{<ESC>pa}}
"vmap ,ppl s\parpic[l]{\includegraphics{<ESC>pa}}

"imap ,fig \begin{figure}<CR>\end{figure}<ESC>O
"vmap ,fig S\begin{figure}<CR>\end{figure}<ESC>P

"imap ,wf \begin{wrapfigure}{}{}<CR>\end{wrapfigure}<ESC>O\includegraphics{}<ESC>i
"vmap ,wf S\begin{wrapfigure}{}{}<CR>\end{wrapfigure}<ESC>\includegraphics{}P

" Table des matiÃ¨res
"imap ,toc \tableofcontents

" (Sous-(sous-)Section numÃ©rotÃ©e
imap ,s \section{}<ESC>i
imap ,ss \subsection{}<ESC>i
imap ,sss \subsubsection{}<ESC>i
vmap ,s s\section{<ESC>pa}
vmap ,ss s\subsection{<ESC>pa}
vmap ,sss s\subsubsection{<ESC>pa}

" (Sous-)Section non-numÃ©rotÃ©e
imap ,s* \section*{}<ESC>i
imap ,ss* \subsection*{}<ESC>i
imap ,sss* \subsubsection*{}<ESC>i
vmap ,s* s\section*{<ESC>pa}
vmap ,ss* s\subsection*{<ESC>pa}
vmap ,sss* s\subsubsection*{<ESC>pa}

" PrÃ©sentations LaTeX-Beamer
"imap ,un \uncover<>{}<ESC>i

"imap ,on \only<>{}<ESC>2hi
"vmap ,on S\only<+->{<CR>}<ESC>P

"imap ,f <CR><CR>\begin{frame}<CR>\end{frame}<ESC>O
"vmap ,f S<CR><CR>\begin{frame}<CR>\end{frame}<ESC>P

"imap ,ft \frametitle{}<ESC>i
"vmap ,ft s\frametitle{<ESC>pa}

"imap ,alt \alert{}<ESC>i

"imap ,itt \item<-><ESC>hi

" Marques de modifications
"imap ,chb \begin{changebar}<CR>\end{changebar}<ESC>O
"vmap ,chb S\begin{changebar}<CR>\end{changebar}<ESC>P

" Environnement quelconque
"imap ,env \begin{ENV}<CR>\end{ENV}<ESC>O
"vmap ,env S\begin{ENV}<CR>\end{ENV}<ESC>P

" Retour ou saut de ligne
"imap ,cr \\ <CR>

" Retour Ã  la ligne justifiÃ©
"imap ,lb \linebreak 

" Retour Ã  la ligne simple
"imap ,nl \newline

" Saut de page
"imap ,pb \pagebreak

" Changement de colonne
" imap ,cb \columnbreak

" Gros saut de ligne
"imap ,bs <CR>\bigskip<CR>

" Ligatures
"imap ,oe \oe{}

" Mode maths en ligne
"imap ,$ $$<ESC>i
"vmap ,$ s$<ESC>pa$

" Mode maths centrÃ©
"imap ,$$ \[<CR>\]<ESC>O
"vmap ,$$ S\[<CR>\]<ESC>P

" Texte normal en mode maths
"imap ,rm \textrm{}<ESC>i

" Racine carrÃ©e
"imap ,rc \sqrt{}<ESC>i
"vmap ,rc s\sqrt{<ESC>pa}

" Pi
"imap ,pi \pi
"imap ,Pi \Pi

" Angles et trigo
"imap ,wh \widehat{}<ESC>i
"imap _c \cos
"imap _s \sin
"imap _t \tan

" FlÃ¨che fonction 
"imap ,lm \longmapsto<ESC>a

" Signe multipliÃ©
"imap ,* \times

" SignÃ© divisÃ©
"imap ,/ \div

" Centrage
"imap ,c \begin{center}<CR>\end{center}<ESC>O
"vmap ,c S\begin{center}<CR>\end{center}<ESC>P

" Frame
" imap ,f \begin{frame}<CR>\end{frame}<ESC>O
" vmap ,f S\begin{frame}<CR>\end{frame}<ESC>P

" Minipage
"imap ,mp \begin{minipage}[t]{.5\textwidth}<CR>\end{minipage}<ESC>O
"vmap ,mp S\begin{minipage}[t]{.5\textwidth}<CR>\end{minipage}<ESC>P

" Double-colonnage
"imap ,dc \begin{multicols}{2}<CR>\end{multicols}<ESC>O
"vmap ,dc S\begin{multicols}{2}<CR>\end{multicols}<ESC>P

" CaractÃ¨res machine Ã  Ã©crire
"imap ,tt \texttt{}<ESC>i
"vmap ,tt s\texttt{<ESC>pa}

"imap ,ts {\ttfamily<CR>}<ESC>O
"vmap ,ts S{\ttfamily<CR>}<ESC>P

" CaractÃ¨res gras
"imap ,bf \textbf{}<ESC>i
"vmap ,bf s\textbf{}<ESC>Pi

" Paragraphe
"imap ,pa \paragraph{}<ESC>i
"vmap ,pa s\paragraph{}<ESC>Pi


" Soulignement
"imap ,_ \underline{}<ESC>i
"vmap ,_ s\underline{<ESC>pa}

" Ligne supÃ©rieure
"imap ,ol \overline{}<ESC>i
"vmap ,ol s\overline{<ESC>pa}

" CaractÃ¨res penchÃ©s
"imap ,sl \textsl{}<ESC>i
"vmap ,sl s\textsl{<ESC>pa}

"imap ,sls {\slshape<CR>}<ESC>O
"vmap ,sls S{\slshape<CR>}<ESC>P

" CaractÃ¨res italiques
"imap ,i \textit{}<ESC>i
"vmap ,i s\textit{<ESC>pa}

"imap ,is {\itshape<CR>}<ESC>O
"vmap ,is S{\itshape<CR>}<ESC>P

" Petites capitales
"imap ,sc \textsc{}<ESC>i
"vmap ,sc s\textsc{<ESC>pa}

" Caligraphiques math
"imap ,mc \mathscr{}<ESC>i
"vmap ,mc s\mathscr{<ESC>pa}

" Ensembles math
"imap ,mb \mathbb{}<ESC>i
"vmap ,mb s\mathbb{<ESC>pa}

" Ensembles
"imap ,bb \mathbb{}<ESC>i
"vmap ,bb s\mathbb{<ESC>pa}

" Verbatim
"imap ,vb+ \verb++<ESC>i
"vmap ,vb+ s\verb+<ESC>pa+

"imap ,vbt \begin{verbatim}<CR>\end{verbatim}<ESC>O
"vmap ,vbt S\begin{verbatim}<CR>\end{verbatim}<ESC>P
	
"imap ,vtt \begin{verbatimtab}<CR>\end{verbatimtab}<ESC>O
"vmap ,vtt S\begin{verbatimtab}<CR>\end{verbatimtab}<ESC>P
	
" Vecteur
"imap ,v \overrightarrow{}<ESC>i
"vmap ,v s\overrightarrow{<ESC>pa}

" Logarithmes, exponentielles
"imap ,ln \ln{}<ESC>i
"imap ,exp \exp{}<ESC>i

"vmap ,ln s\ln{<ESC>pa}
"vmap ,exp s\exp{<ESC>pa}

" Infini
"imap ,inf \infty{}

" FantÃ´me
"imap ,ph \phantom{}<ESC>i
"vmap ,ph s\phantom{<ESC>pa}

" Insertion tableau
"imap ,tab \begin{tabular}[t]{}<CR>\end{tabular}<ESC>k$i
"imap ,tabc \begin{tabular}[c]{}<CR>\end{tabular}<ESC>k$i
"imap ,hl \hline
"imap ,tn \tabularnewline <CR>

"imap ,al \begin{align*}<CR>\end{align*}<ESC>O
"vmap ,al S\begin{align*}<CR>\end{align*}<ESC>P

"imap ,ar \begin{array}[t]{rcl}<CR>\end{array}<ESC>O
"vmap ,ar S\begin{array}[t]{rcl}<CR>\end{array}<ESC>P

"imap ,eqn \begin{eqnarray*}<CR>\end{eqnarray*}<ESC>O

"imap ,sy \left\lbrace{}<CR>\begin{array}{rcl}<CR>\end{array}\right.<ESC>O

"vmap ,tab S\begin{tabular}[t]{}<CR>\end{tabular}<ESC>P


" Interligne
"imap ,ps \parskip=1.2ex
" Interligne tableaux
"imap ,ast \renewcommand{\arraystretch}{1.8}

" Accolades systÃ¨mes
"imap ,{ \left\lbrace{}
"imap ,. \right.

" Liste
"imap ,ite \begin{itemize}<CR>\end{itemize}<ESC>O\item<SPACE>
"vmap ,ite S\begin{itemize}<CR>\end{itemize}<ESC>P

"imap ,itb \begin{itemize}[<+->]<CR>\end{itemize}<ESC>O\item<SPACE>
"vmap ,itb S\begin{itemize}[<+->]<CR>\end{itemize}<ESC>P

"imap ,it \item<SPACE>
"imap ,b \begin{}<ESC>i
"vmap ,b dwi\begin{}<ESC>P<CR>o\end{}<ESC>Pki
imap ,: \
nmap ,: \
imap ,su \subseteq
imap ,l \Longrightarrow 
imap ,ll \Longleftrightarrow 	     		
" Enumeration
"imap ,en \begin{enumerate}<CR>\end{enumerate}<ESC>O\item<SPACE>
"vmap ,en S\begin{enumerate}<CR>\end{enumerate}<ESC>P

"imap ,an \begin{enumerate}[a)]<CR>\end{enumerate}<ESC>O\item<SPACE>
"vmap ,an S\begin{enumerate}[a)]<CR>\end{enumerate}<ESC>P

" thm"
"imap ,th \begin{theorem}<CR>\end{theorem}<ESC>O
"vmap ,th S\begin{theorem}<CR>\end{theorem}<ESC>P

"imap ,de \begin{definition}<CR>\end{definition}<ESC>O
"vmap ,de S\begin{definition}<CR>\end{definition}<ESC>P	

"imap ,co \begin{coro}<CR>\end{coro}<ESC>O
"vmap ,co S\begin{coro}<CR>\end{coro}<ESC>P	

"imap ,po \begin{prop}<CR>\end{prop}<ESC>O
"vmap ,po S\begin{prop}<CR>\end{prop}<ESC>P	


"imap ,pr \begin{proof}<CR>\end{proof}<ESC>O
"vmap ,pr S\begin{proof}<CR>\end{proof}<ESC>P	

"imap ,pp \begin{propr}<CR>\end{propr}<ESC>O
"vmap ,pp S\begin{propr}<CR>\end{propr}<ESC>P

"imap ,m \mathcal{}<ESC>i
"vmap ,m s\mathcal{<ESC>pa}

" Initialisation de compteur 
"imap ,ct \setcounter{enumi}{}<ESC>i

" Enumeration avec initialisation de compteur
"imap ,ens \begin{enumerate}<CR>\setcounter{enumi}{0}<CR>\end{enumerate}<ESC>O\item<SPACE>
"vmap ,ens S\begin{enumerate}<CR>\setcounter{enumi}{0}<CR>\end{enumerate}<ESC>P

" Description
"imap ,des \begin{description}<CR>\end{description}<ESC>O\item[]<ESC>i
"imap ,itd \item[]<ESC>i

" Au fer Ã  droite
"imap ,r \begin{flushright}<CR>\end{flushright}<ESC>O
"vmap ,r S\begin{flushright}<CR>\end{flushright}<ESC>P

" Au fer Ã  gauche
"imap ,fl \begin{flushleft}<CR>\end{flushleft}<ESC>O
"vmap ,fl S\begin{flushleft}<CR>\end{flushleft}<ESC>P

" AlinÃ©a
"imap ,ind \indent{}

" Pas d'alinÃ©a
"imap ,noi \noindent{}

" Largeur de texte
"imap ,tw \textwidth

" Espaces supplÃ©mentaires
"imap ,, \,
"imap ,; \;
"imap ,q \quad
"imap ,qq \qquad

" Espacement horizontal ou vertical
"imap ,hs \hspace{}<ESC>i
"imap ,vs \vspace{}<ESC>i

" Remplissage horizontal ou vertical
"imap ,hf \hfill
"imap ,vf \vfill


" ParenthÃ¨ses
" imap ,( \left(
imap ,( \{  \}<ESC>2hi
"imap ,) \right)
"imap ,() \left(   \right)<ESC>8hi

" Crochets
"imap ,[ \left[
"imap ,] \right]
"imap ,dcr \left[   \right]<ESC>8hi


" Rien Ã  droite
"imap ,. \right.

" Environ Ã©gal
"imap ,= \simeq

" DiffÃ©rent
" imap ,n= \not=

" InÃ©galitÃ©s
"imap ,< \leqslant{}
"imap ,> \geqslant{}

" Ã‰quivalences
"imap ,eq \Longleftrightarrow{}

" Nombres barrÃ©s
" imap ,ca \cancel{}<ESC>i
" vmap ,ca s\cancel{}<ESC>Pa

" BoÃ®tes
"imap ,fb \fbox{}<ESC>i
"vmap ,fb S\fbox{<CR>}<ESC>PA

"imap ,sb \scalebox{}<ESC>i
"vmap ,sb S\scalebox{}{<CR>}<ESC>P

" NumÃ©ros
"imap ,no \no{}<ESC>i
"imap ,No \No{}<ESC>i,cA
"imap ,e \ieme{}<ESC>i
"imap ,er 1\ier{}
"imap ,re 1\iere{}

" Renvois
"imap ,fn \,\footnote{}<ESC>i

" Liens
"imap ,url \url{}<ESC>i
"imap ,hr \href{}{}<ESC>2hi

"vmap ,url s\url{<ESC>pa}
"vmap ,hr s\href{<ESC>pa}{}

" Citation
"imap ,qt \begin{quote}<CR>\end{quote}<ESC>O
"vmap ,qt S\begin{quote}<CR>\end{quote}<ESC>P

" Pourcentage bien espacÃ©
"imap ,% \,\%

"hi Conceal guibg=#F9F5F9 guifg=DarkMagenta

