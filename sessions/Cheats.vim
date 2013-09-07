" /Volumes/LaCie6T/Repos/vim-1/sessions/Cheats.vim:
" Vim session script.
" Created by session.vim 2.4.8 on 31 August 2013 at 15:50:55.
" Open this file in Vim and run :source % to restore your session.

let g:session_autoload = 'no'
let g:session_autosave = 'no'
let g:session_default_to_last = 0
let g:session_persist_globals = ['g:session_autoload', 'g:session_autosave', 'g:session_default_to_last', 'g:session_persist_globals']
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
cd ~/Dropbox/Cheats
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +32 omz-bundler-helper.md
badd +1 omz-bundler-plugin.md
badd +1 omz-gem-plugin.md
badd +1 omz-git-extras-plugin.md
badd +1 omz-git-plugin.md
badd +1 omz-osx-plugin.md
badd +1 omz-ssh-agent-plugin.md
badd +1 zsh-cheat.md
badd +1 Tmux\ cheatsheet.txt
badd +1 automount-cheat.txt
badd +1 dscl-cheat.txt
badd +1 lsof-qs.txt
badd +1 od-data.txt
badd +1 sso_util_cheats.txt
badd +1 zshtips.txt
badd +1 ~/.vim/vundle/vim-session/doc/session.txt
silent! argdel *
edit zshtips.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 32 + 33) / 67)
exe 'vert 1resize ' . ((&columns * 70 + 72) / 145)
exe '2resize ' . ((&lines * 31 + 33) / 67)
exe 'vert 2resize ' . ((&columns * 70 + 72) / 145)
exe '3resize ' . ((&lines * 32 + 33) / 67)
exe 'vert 3resize ' . ((&columns * 72 + 72) / 145)
exe '4resize ' . ((&lines * 31 + 33) / 67)
exe 'vert 4resize ' . ((&columns * 72 + 72) / 145)
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
let s:l = 37 - ((3 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
wincmd w
" argglobal
edit zsh-cheat.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
" argglobal
edit omz-bundler-helper.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((15 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 011|
wincmd w
" argglobal
edit omz-bundler-plugin.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 32 + 33) / 67)
exe 'vert 1resize ' . ((&columns * 70 + 72) / 145)
exe '2resize ' . ((&lines * 31 + 33) / 67)
exe 'vert 2resize ' . ((&columns * 70 + 72) / 145)
exe '3resize ' . ((&lines * 32 + 33) / 67)
exe 'vert 3resize ' . ((&columns * 72 + 72) / 145)
exe '4resize ' . ((&lines * 31 + 33) / 67)
exe 'vert 4resize ' . ((&columns * 72 + 72) / 145)
tabedit lsof-qs.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 80 + 72) / 145)
exe 'vert 2resize ' . ((&columns * 64 + 72) / 145)
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
let s:l = 174 - ((11 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
174
normal! 045|
wincmd w
" argglobal
edit ~/.vim/vundle/vim-session/doc/session.txt
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 80 + 72) / 145)
exe 'vert 2resize ' . ((&columns * 64 + 72) / 145)
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
1wincmd w
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
