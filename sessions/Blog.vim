" /Volumes/LaCie6T/Repos/vim-1/sessions/Blog.vim:
" Vim session script.
" Created by session.vim 2.4.8 on 30 August 2013 at 19:27:40.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/LaCie6T/Repos/octopress
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +18 Gemfile
badd +1 Rakefile
badd +1 _config.yml
badd +1 config.rb
badd +1 config.ru
badd +1 .travis.yml
badd +1 .gitignore
badd +1 .gitattributes
badd +1 .powrc
badd +1 source/index.html
badd +1 source/search.html
badd +18 source/blog/archives/index.html
badd +1 source/_posts/2013-08-15-using-acls-to-simplify-access.markdown
badd +1 .themes/octopress-bootstrap/source/javascripts/twitter.js
badd +1 .themes/octopress-bootstrap/source/javascripts/octopress.js
badd +1 \[BufExplorer]
silent! argdel *
edit _config.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 87) / 175)
exe '2resize ' . ((&lines * 24 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 85 + 87) / 175)
exe '3resize ' . ((&lines * 28 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 85 + 87) / 175)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 027|
wincmd w
" argglobal
edit Gemfile
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
3
silent! normal! zo
let s:l = 20 - ((16 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 016|
wincmd w
" argglobal
edit Rakefile
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 018|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 87) / 175)
exe '2resize ' . ((&lines * 24 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 85 + 87) / 175)
exe '3resize ' . ((&lines * 28 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 85 + 87) / 175)
tabedit source/index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 90 + 87) / 175)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
" argglobal
edit source/blog/archives/index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((15 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 06|
lcd /Volumes/LaCie6T/Repos/octopress
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 90 + 87) / 175)
tabedit /Volumes/LaCie6T/Repos/octopress/.themes/octopress-bootstrap/source/javascripts/twitter.js
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 21 + 28) / 56)
exe '2resize ' . ((&lines * 31 + 28) / 56)
" argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 78 - ((73 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
78
normal! 0
lcd /Volumes/LaCie6T/Repos/octopress
wincmd w
" argglobal
edit /Volumes/LaCie6T/Repos/octopress/.themes/octopress-bootstrap/source/javascripts/octopress.js
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
silent! normal! zo
let s:l = 73 - ((17 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
73
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 21 + 28) / 56)
exe '2resize ' . ((&lines * 31 + 28) / 56)
tabnext 2
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 2
2wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
