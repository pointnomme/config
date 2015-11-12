" Dossier du fichier comme dossier de travail de Vim
set acd
" Pour Vim < 7.0
"cab cwd cd %:h

" Codages des caractÃ¨res ISO-8859-1
set fileencoding=iso-8859-1
"set fileencoding=iso-8859-15

" ModÃ¨les
map ,mod :r ~/site/statique/modele.html<CR>ggdd

" Sauvegarde sans quitter le mode insertion si mode insertion il y
" avait.
map <F2> <ESC>:w<CR>
imap <F2> <ESC>:w<CR>

" Sauvegarde en quittant le mode insertion

" Visualisation
map <F5> :!firefox %:p &<CR><CR>
imap <F5> <ESC>:!firefox %:p &<CR><CR>a

" FTP
map <F3> :!gftp &<CR><CR>
imap <F3> <ESC>:!gftp &<CR><CR>a

" 4 espaces pour les tabulations suffisent en HTML
set ts=4
set sw=4

" Pas de retour Ã  la ligne
set tw=0

" Insertion de saut Ã  la ligne
imap ,br <CR><br><CR>

" Headers 1, 2, 3 et 4
imap ,h1 <h1></h1><ESC>4hi
vmap ,h1 s<h1><ESC>pa</h1>

imap ,h2 <h2></h2><ESC>4hi
vmap ,h2 s<h2><ESC>pa</h2>

imap ,h3 <h3></h3><ESC>4hi
vmap ,h3 s<h3><ESC>pa</h3>

imap ,h4 <h4></h4><ESC>4hi
vmap ,h4 s<h4><ESC>pa</h4>

" Environnement div quelconque
imap ,div <div class=""><CR></div><ESC>?"<CR>i
vmap ,div di<div class=""><CR></div><ESC>P

" Centrage
imap ,c <div align="center"><CR></div><ESC>O
vmap ,c S<div align="center"><CR></div><ESC>P

" JustifiÃ©
imap ,j <div align="justify"><CR></div><ESC>O
vmap ,j s<div align="justify"><CR></div><ESC>P

" Paragraphe
imap ,p <p><CR></p><ESC>O
vmap ,p S<p><CR></p><ESC>P

" Gras
imap ,b <strong></strong><ESC>8hi
vmap ,b s<strong><ESC>pa</strong> 

" Italique
imap ,i <em></em><ESC>4hi
vmap ,i s<em><ESC>pa</em>

" Image
imap ,img <img src="" border="0" alt=""><ESC>19hi
vmap ,img s<img src="" border="0" alt=""><ESC>19hPa

" Liens
imap ,lnk <a href=""></a><ESC>5hi
vmap ,lnk s<a href="<ESC>pa"><ESC>pa</a>

imap ,eml <a href="mailto:?Subject="></a><ESC>3hi
vmap ,eml <a href="mailto:?Subject="><ESC>pa</a>

" Ã‰tiquettes (liens internes)
imap ,lnh <a href="#"></a><ESC>5hi
imap ,lnn <a name=""></a><ESC>5hi
vmap ,lnn s<a name="<ESC>pa"><ESC>pa</a>

" Choix de fonte
imap ,ff <font face=""></font><ESC>8hi
vmap ,ff s<font face=""><ESC>pa</font>

" Fonte courier
imap ,ffc <font face="courier"></font><ESC>6hi
vmap ,ffc s<font face="courier"><ESC>pa</font>

" Taille de police
imap ,fs <font size=""></font><ESC>8hi
vmap ,fs s<font size=""><ESC>pa</font>

" Taille de police 5
imap ,fs5 <font size="5"></font><ESC>6hi
vmap ,fs5 s<font size="5"><ESC>pa</font>

" Texte prÃ©formattÃ©
imap ,pre <pre><CR></pre><ESC>O
vmap ,pre s<pre><CR></pre><ESC>P

" Texte prÃ©formattÃ©
imap ,pc <pre class="console"><CR></pre><ESC>O
vmap ,pc S<pre> class="console"<CR></pre><ESC>P

" Classe Ã©diteur
imap ,pe <pre class="editor"><CR></pre><ESC>O
vmap ,pe S<pre> class="editor"<CR></pre><ESC>P

" Commentaire
imap ,com <!--<CR>--><ESC>kA
vmap ,com S<!--<CR>--><ESC>P

" Insertion balises de base
map ,int <ESC>:r modele.html<CR>i
imap ,int <ESC>:r modele.html<CR>i

" Insertion icÃ´ne-titre
imap ,ic <link rel="icon" type="image/png" href="favicon.ico/"> 
vmap ,ic s<link rel="icon" type="image/png" href=\"<ESC>pa\"> 

" Visualisation du fichier courant dans Mozilla
" Attention : Mozilla exige le chemin absolu complet
" map <F5> :w<CR>:!mozilla %:p &<CR>
" imap <F5> <ESC>:w<CR>:!mozilla %:p &<CR>

" Modification du fichier courant dans Mozilla
" Attention : Mozilla exige le chemin absolu complet
" map <S-F5> :w<CR>:!mozilla -editor %:p &<CR>
" imap <S-F5> <ESC>:w<CR>:!mozilla -editor %:p &<CR>

" Tableau
imap ,tab <table><CR></table><ESC>O
vmap ,tab s<table><CR></table><ESC>P

imap ,tr <tr><cr></tr><ESC>O
vmap ,tr S<tr><CR></tr><ESC>P

imap ,td <td><cr></td><ESC>O
vmap ,td S<td><CR></td><ESC>P

"	imap ,td <td></td><ESC>4hi
"	vmap ,td s<td><ESC>pa</td>

" Code
imap ,co <code></code><ESC>6hi
vmap ,co s<code><ESC>pa</code>

" Liste (sans numÃ©rotation)
imap ,ul <ul><CR></ul><ESC>O
vmap ,ul s<ul><CR></ul><ESC>P

" Liste (avec numÃ©rotation)
imap ,ol <ol><CR></ol><ESC>O
vmap ,ol s<ol><CR></ol><ESC>P

" Ã‰lÃ©ment de liste
imap ,li <li><CR></li><ESC>O
vmap ,li s<li><CR></li><ESC>P

" Liste descriptive
" environnement
imap ,dl <dl><CR></dl><ESC>O
vmap ,dl s<dl><CR></dl><ESC>P

" Ã©lÃ©ment
imap ,dt <dt><CR></dt><ESC>O
vmap ,dt s<dt><CR></dt><ESC>P

"description
imap ,dd <dd><CR></dd><ESC>O
vmap ,dd s<dd><CR></dd><ESC>P

" Indice, exposant
" imap ,ind
imap ,sup <sup></sup><ESC>5hi

" Bouton
imap ,bt <form><CR></form><ESC>O<input type="button" value="Tester le bouton" onClick="alert(bouton fonctionnel);">

" Formulaire
imap ,frm <form><CR></form><ESC>O

" Champ de texte
imap ,chp <form><CR></form><ESC>O<input type="text"  value="valeur">

" evalCommand Javascript
imap ,evc document.applets[0].evalCommand('');<ESC>2hi

" getValue Javascript
imap ,gv document.applets[0].getValue('');<ESC>2hi

" Insertion d'un script Javascript
imap ,js <script type="text/javascript"><CR></script><ESC>O

" BoÃ®te de message
imap ,al alert('Alerte quelconque');


