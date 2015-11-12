""""""""""""""""""""""""""""""""
" DÃ©but de la personnalisation "
"                              "
"     http://ivsb2.free.fr     "
""""""""""""""""""""""""""""""""
" Set options and add mapping such that Vim behaves a lot like MS-Windows
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2006 Apr 02

" bail out if this isn't wanted (mrsvim.vim uses this).
if exists("g:skip_loading_mswin") && g:skip_loading_mswin
  finish
endif

" set the 'cpoptions' to its Vim default
if 1	" only do this when compiled with expression evaluation
  let s:save_cpo = &cpoptions
endif
set cpo&vim
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'


" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
"behave mswin
set selectmode=key,mouse " same as mswin
set mousemodel=popup     " same as mswin and dos/win default
set keymodel=startsel,stopsel    " halfway compromise
set selection=inclusive  " same as xterm and default
set guioptions-=T
set t_Co=256
nnoremap <C-Left> b
vnoremap <C-S-Left> b
nnoremap <C-S-Left> gh<C-O>b
inoremap <C-S-Left> <C-\><C-O>h<C-\><C-O>gh<C-O>b
inoremap <S-Left> <C-\><C-O>h<C-\><C-O>gh<C-O>h<C-O>l

nnoremap <C-Right> e
vnoremap <C-S-Right> e
nnoremap <C-S-Right> gh<C-O>e
inoremap <C-S-Right> <C-\><C-O>gh<C-O>e
inoremap <S-Right> <C-\><C-O>gh<C-O>l<C-O>h
" backspace and cursor keys wrap to previous/next line.
" keys wrap to 
set backspace=indent,eol,start whichwrap+=<,>,[,]

" backspace in Visual mode deletes selection
vnoremap <BS> d
" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>		"+gP
map <S-Insert>		"+gP
"nnoremap <C-V>		"+gP

cmap <C-V>		<C-R>+
cmap <S-Insert>		<C-R>+


"
" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
"exe 'nnoremap <script> <C-V>' paste#paste_cmd['n']



imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>
" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>
"noremap <C-S-V>		<C-V>
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" For CTRL-V to work autoselect must be off.
" On Unix we have two selections, autoselect can be used.
if !has("unix")
  set guioptions-=a
endif

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c


nmap <C-n> <ESC>:cn<CR>
nmap <C-p> <ESC>:cp<CR>




" restore 'cpoptions'
set cpo&
if 1
  let &cpoptions = s:save_cpo
  unlet s:save_cpo
endif
set dict+=/usr/share/dict/french

" Coloration syntaxique
syntax on

" RÃ©sulats de recherche non-colorÃ©s
set nohls

" Souris utilisable
set mouse=a

" color scheme
if has('gui_running')
    colorscheme solarized
    set backgroud=light
    set guifont=Monaco\ 10
else
    colorscheme railscasts
endif
" font
set nu 

 " Use conceal vim 7.3 feature:
"set cole=2	" conceal level
" set cocu=n	" conceal cursor /when set to n typing is not very pleasant/
" Conceal in tex file: "admgs", a=accents, d=delimiters, m=math symbols,
" g=Greek, s=superscripts/subscripts:
"hi Conceal guibg=#F9F5F9 guifg=DarkMagenta
"let g:tex_conceal="adgms"
"set debug=msg 
"let g:is_bash=1

if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"" Format text settings:
set softtabstop=4
set shiftwidth=4
set textwidth=78
set linebreak
set wrapmargin=0
set formatoptions+=1
set smartindent
"

" Dossier du fichier comme dossier de travail
set acd
cab cwd cd %:h

" Recherche intelligemment sensible Ã  la casse (ou pas)
set ignorecase
set smartcase

" Taille de l'historique
set history=200

" Foin de ces bips ridicules qui ravalent l'homme au rang du ouindozien
set vb 

" DÃ©lai raccourcis-clavier
set tm=500

filetype plugin on
filetype indent on
set wildmenu

set cmdheight=2
set display=lastline
set autowrite
" Indentation automatique
set autoindent

" Tabulation Ã  4
"set ts=4
"set sw=4

" Sauvegarde rapide du fichier actuel
"map <F2> :w<CR>
"imap <F2> <ESC>:w<CR>

" Terminal
"cab xt !xterm &<CR><CR>

" Gestionnaire de fichiers graphique
"cab thu !thunar $PWD &<CR><CR>

" Formatage rapide du paragraphe courant ou de la selection
" souris ou visuelle
" map <F6> gq}
" imap <F6> <ESC>gq}a
" vmap <F6> gq

" Formatage paragraphe ligne par ligne
" map <S-F6> gqj
" imap <S-F6> <ESC>gqj

" Mode collage, activation/dÃ©sactivation
set pastetoggle=<C-F11>





noremap <C-k> <C-i>
" Rechargement du vimrc
cab rerc so $MYVIMRC \| e

" Insertion d'un modÃ¨le Makefile au dÃ©but du fichier
"map ,mk :0r ~/.latex/Makefile-latex<CR>

" Fonctions pour fichiers LaTe
" au BufEnter,BufNewFile *.tex	exe Flatex()

" Fonctions pour fichiers HTML

" Fonctions pour fichiers Javascript
"au BufEnter *.js exe Fjs()

" Fonctions pour fichiers CSS

" Fonctions pour fichiers txt

