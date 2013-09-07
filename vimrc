" vim:fdm=expr:fdl=0
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

""" Initialization:
  " We dont want to be capturing and then propagating Vim's state
  " info.  Same for sessions and views

  set viminfo=
  set nocompatible

  source ~/.vim/vundle-plugins.vim

  "Source several useful plugins from VIMRUNTIME.  Notice the
  "use here of the ':' form of the runtime command.  This means
  "that the file shouldn't be loaded if it's been loaded already.
  "It's better to open a window(s) and then source these files
  "into it...
  "  :runtime syntax/colortest.vim
  "  :runtime syntax/hitest.vim
  "  :runtime syntax/whitespace.vim
  "  runtime paste.vim
  "  runtime macmap.vim
  "  runtime ftplugin/man.vim
  "  runtime syntax/2html.vim
  "  runtime macros/shellmenu.vim
  "  runtime macros/matchit.vim

  " Leader
  let mapleader = ","
  let maplocalleader = ",,"

""" Sessions
 "set sessionoptions+=globals
 "set sessionoptions+=localoptions
 "set sessionoptions+=slash
 "set sessionoptions+=unix

""" Options
  set encoding=utf-8
  "set modelines=0
  set autoindent
  set noshowmode   "Airline's statusline takes care of this
  set showcmd
  set nohidden
  set visualbell
  set ttyfast
  set ruler
  set backspace=indent,eol,start
  set nonumber
  set norelativenumber
  set nuw=4
  set laststatus=2
  set history=1000
  set undofile
  set undoreload=10000
  set list
  "set listchars=tab:â–¸\ ,eol:Â¬,extends:â¯,precedes:â®
  set lazyredraw
  set matchtime=3
  "set showbreak=â†ª
  set splitbelow
  set splitright
  set autowrite
  set autoread
  set shiftround
  "set title
  set linebreak
  set dictionary=/usr/share/dict/words
  "set spellfile=~/.vim/custom-dictionary.utf-8.add

  " Don't try to highlight lines longer than 800 characters.
  set synmaxcol=800

  " Time out on key codes but not mappings.
  " Basically this makes terminal Vim work sanely.
  set notimeout
  set ttimeout
  set ttimeoutlen=10

  " Make Vim able to edit crontab files again.
  set backupskip=/tmp/*,/private/tmp/*"

  " Better Completion
  set complete=.,w,b,u,t
  set completeopt=longest,menuone,preview

  " Save when losing focus
  au FocusLost * :silent! wall

  " Resize splits when the window is resized
  au VimResized * :wincmd =

"""" Cursorline
  " Only show cursorline in the current window and in normal mode.

  augroup cline
      au!
      au WinLeave,InsertEnter * set nocursorline
      au WinEnter,InsertLeave * set cursorline
  augroup END

"""" Backups

  set backup                        " enable backups
  set noswapfile                    " it's 2013, Vim.

  set undodir=~/.vim/tmp/undo//     " undo files
  set backupdir=~/.vim/tmp/backup// " backups
  set directory=~/.vim/tmp/swap//   " swap files

  " Make those folders automatically if they don't already exist.
  "if !isdirectory(expand(&undodir))
  "    call mkdir(expand(&undodir), "p")
  "endif
  "if !isdirectory(expand(&backupdir))
  "    call mkdir(expand(&backupdir), "p")
  "endif
  "if !isdirectory(expand(&directory))
  "    call mkdir(expand(&directory), "p")
  "endif

"""" Wildmenu completion

  set wildmenu
  set wildmode=list:longest

  set wildignore+=.hg,.git,.svn                    " Version control
  set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
  set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
  set wildignore+=*.spl                            " compiled spelling word lists
  set wildignore+=*.sw?                            " Vim swap files
  set wildignore+=*.DS_Store                       " OSX bullshit

  set wildignore+=*.luac                           " Lua byte code

  set wildignore+=migrations                       " Django migrations
  set wildignore+=*.pyc                            " Python byte code

  set wildignore+=*.orig                           " Merge resolution files

  " Clojure/Leiningen
  set wildignore+=classes
  set wildignore+=lib

"""" Line Return

  " Make sure Vim returns to the same line when you reopen a file.
  " Thanks, Amit
  augroup line_return
      au!
      au BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \     execute 'normal! g`"zvzz' |
          \ endif
  augroup END

"""" Tabs, spaces, wrapping

  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set expandtab
  set wrap
  set textwidth=80
  set formatoptions=qrn1
  set colorcolumn=+1

"""" Searching and movement

  " Use sane regexes.
  "nnoremap / /\v
  "vnoremap / /\v

  set ignorecase smartcase incsearch nohlsearch wrapscan magic
  set showmatch
  set gdefault

  set scrolloff=3
  set sidescroll=1
  set sidescrolloff=10

  set virtualedit+=block

  noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

  runtime macros/matchit.vim
  "map <tab> %
  silent! unmap [%
  silent! unmap ]%

  " Made D behave
  nnoremap D d$

  " Don't move on *
  nnoremap * *<c-o>

  " Jumping to tags.
  "
  " Basically, <c-]> jumps to tags (like normal) and <c-\> opens the tag in a new
  " split instead.
  "
  " Both of them will align the destination line to the upper middle part of the
  " screen.  Both will pulse the cursor line so you can see where the hell you
  " are.  <c-\> will also fold everything in the buffer and then unfold just
  " enough for you to see the destination line.
  nnoremap <c-]> <c-]>mzzvzz15<c-e>`z:Pulse<cr>
  nnoremap <c-\> <c-w>v<c-]>mzzMzvzz15<c-e>`z:Pulse<cr>

  " Keep search matches in the middle of the window.
  nnoremap n nzzzv
  nnoremap N Nzzzv

  " Same when jumping around
  nnoremap g; g;zz
  nnoremap g, g,zz
  nnoremap <c-o> <c-o>zz

  " Easier to type, and I never use the default behavior.
  noremap H ^
  noremap L $
  vnoremap L g_

  " Heresy
  inoremap <c-a> <esc>I
  inoremap <c-e> <esc>A
  cnoremap <c-a> <home>
  cnoremap <c-e> <end>

  " gi already moves to "last place you exited insert mode", so we'll map gI to
  " something similar: move to last change
  nnoremap gI `.

  " Fix linewise visual selection of various text objects
"  nnoremap VV V
  nnoremap Vit vitVkoj
  nnoremap Vat vatV
  nnoremap Vab vabV
  nnoremap VaB vaBV

"""" Movements:
  noremap <C-h> <C-W>h
  noremap <C-j> <C-W>j
  noremap <C-k> <C-W>k
  noremap <C-l> <C-W>l

  noremap <C-Down>  <C-W>j
  noremap <C-Up>    <C-W>k
  noremap <C-Left>  <C-W>h
  noremap <C-Right> <C-W>l

  " Use <C-TAB> and <C-S-TAB> to switch buffers in the current window
  "noremap <C-TAB>   :MBEbn<CR>
  "noremap <C-S-TAB> :MBEbp<CR>

  " Use <C-TAB> and <C-S-TAB> to switch windows
  "noremap <C-TAB>   <C-W>w
  "noremap <C-S-TAB> <C-W>W

"""" Line Numbers:
  set numberwidth=5
  set nu
  set ruler
  " Rotate Line Number Styles (well, just toggle for now)
  nmap <leader>n  :set nu!<CR>

"""" Text And White Space:
  " Defaults, changed by filetype and/or modelines
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab

  set textwidth=78
  set backspace=indent,eol,start
  set formatoptions=croql

  " Character representations for invisibles (i.e., white space)
  set listchars=tab:▸\ ,eol:¬,extends:⦊,precedes:⦉
  " Colors (NonText is eol, SpecialKey is tab)
  highlight NonText       guifg=#0000a4 guibg=NONE
  highlight SpecialKey    guifg=#4a4a59 guibg=NONE

""" Folding:
  "Thx again, SJL !
  set foldlevelstart=0
  " Setup space for the fold indicators
  set foldcolumn=0

  " XML folding
  let g:xml_syntax_folding=1
  au! FileType xml setlocal foldmethod=syntax

  " Quick 'n' Easy fold toggling (Simple, then Recursive):
  nnoremap <Space> za
  nnoremap <S-Space> zA
" nnoremap <C-LeftMouse> za
" nnoremap <S-LeftMouse> zA
  vnoremap <Space> za
  vnoremap <S-Space> zA

  " Make zO recursively open whatever top level fold we're in, no matter where the
  " cursor happens to be.
  nnoremap zO zCzO

  " "Focus" the current line.  Basically:
  "
  " 1. Close all folds.
  " 2. Open just the folds containing the current line.
  " 3. Move the line to a little bit (15 lines) above the center of the screen.
  " 4. Pulse the cursor line.  My eyes are bad.
  "
  " This mapping wipes out the z mark, which I never use.
  "
  " I use :sus for the rare times I want to actually background Vim.
  nnoremap <c-z> mzzMzvzz15<c-e>`z:Pulse<cr>

  function! MyFoldText()
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
      return line . ' ' . repeat(" ",fillcharcount) . foldedlinecount . ' ¦' . ' '
  endfunction " }}}
  set foldtext=MyFoldText()

""" Terminal and Mouse:
    set ttybuiltin
    set ttyfast

    if &term == "xterm-256colors"
        "Running in simulated xterm
    elseif &term == "screen-256colors"
        set ttymouse=xterm
    endif

    " Mouse works everywhere and you only have to move over the window to
    " make that window the current one.
    set mouse=a
    set mousef

""" Preset window attributes (preview, help, cmd, etc)
   set previewheight=25
  "set helpheight=25
  "set cmdheight=3

   set laststatus=2

   "These settings create an effect that maximizes editing space by
   "auto-collapsing all but the current window. Windows stacked one on top of
   "the other (vertically, that is) collapse in the vert direction.  Horizontal
   "splits take advantage of the aspect ratio to keep more of the inactive
   "windows visible.
   "set winheight=1
   "set winwidth=85
   set noea

"""" Tab and Window labels
   " Titlestring Examples:
   " Emulate standard status line with 'ruler' set >
   "   :set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
   " Similar, but add ASCII value of char under the cursor (like "ga") >
   "   :set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
   " Display byte count and byte value, modified flag in red. >
   "   :set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
   "   :hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
   " Display a ,GZ flag if a compressed file is loaded >
   "   :set statusline=...%r%{VarExists('b:gzflag','\ [GZ]')}%h...
   "
   " In the |:autocmd|'s: >
   "   :let b:gzflag = 1
   " And: >
   "   :unlet b:gzflag
   " And define this function: >
   "   :function VarExists(var, val)
   "   :    if exists(a:var) | return a:val | else | return '' | endif
   "   :endfunction

   if has('statusline')
    " set title
    " set titlelen=85
    " set titlestring=
    " set title titlestring=%<%F%=%l/%L-%P titlelen=70
     set title titlelen=65
     auto! BufEnter * let &titlestring = "[" . hostname() . "]" . "%=%t%r%h%w%q\ %y"
   endif
   set showtabline=1
   " Make sure we'll use the guitablabel value for both gui and term
   set guioptions+=e

   " To make tabs more readable, the label only contains the tail of the file
   " name and the buffer modified flag.
   set guitablabel=%M%t

"""" Directories and Swap

   set backupdir=~/tmp/backups
   set bk
   set wb
   "  set directory = '~/.vim/tmp/swap'
   set noswf
   " Reset viminfo file
   set vi=

   """ Sessions and Views:
   set vdir=~/.vim/views

   " Clear viewoptions and start over:
   set vop=
   set vop+=cursor
   set vop+=folds
   set vop+=unix

   " Clear sessionoptions and set to preference
 " set ssop=
 " set ssop+=blank
 " set ssop+=buffers
 " set ssop+=curdir
 " set ssop+=folds
 " set ssop+=globals
 " set ssop+=help
 " set ssop+=localoptions
 " set ssop+=options
 " set ssop+=resize
 " set ssop+=sesdir
 " set ssop+=tabpages
 " set ssop+=winpos
 " set ssop+=winsize
 " set ssop+=unix

""" GUI-specific mappings
  if has("gui_running")
    if has("gui_gtk2")
      set guifont=Luxi\ Mono\ 12
    elseif has("x11")
    " Also for GTK 1
      set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
    elseif has("gui_win32")
      set guifont=Luxi_Mono:h12:cANSI
    elseif has("gui_macvim")
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
    endif
  endif

"""" Colors And Syntax:
  "See vundle-plugins.vim for Solarize and color/syntax initializations

  "Show syntax highlighting groups for word under cursor
  function! <SID>SynStack()
      if !exists("*synstack")
          return
      endif
      echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc
  nmap <C-S-P> :call <SID>SynStack()<CR>

""" Layout:
"  if has('gui_running')
"    set guioptions+=b
"    set lines=45
"    set columns=90
"  endif
  set nowrap

""" Key Translations:
"NOTE: The keyboard may have system mappings that consume certain keys before
"      before Vim gets a chance to see them (e.g., <C-Left> for OS X Spaces).

""" Utility Functions And Commands:
"""" Pulse Line
  "Thx SJL !
  function! s:Pulse() " {{{
      let current_window = winnr()
      windo set nocursorline
      execute current_window . 'wincmd w'
      setlocal cursorline

      redir => old_hi
          silent execute 'hi CursorLine'
      redir END
      let old_hi = split(old_hi, '\n')[0]
      let old_hi = substitute(old_hi, 'xxx', '', '')

      let steps = 9
      let width = 1
      let start = width
      let end = steps * width
      let color = 233

      for i in range(start, end, width)
          execute "hi CursorLine ctermbg=" . (color + i)
          redraw
          sleep 6m
      endfor
      for i in range(end, start, -1 * width)
          execute "hi CursorLine ctermbg=" . (color + i)
          redraw
          sleep 6m
      endfor

      execute 'hi ' . old_hi
  endfunction " }}}
  command! -nargs=0 Pulse call s:Pulse()

"""" Show Syntax Attributes
  map <leader>hl :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

  "visual shifting (builtin-repeat)
  vnoremap < <gv
  vnoremap > >gv

"""" Print sorted lists for maps, functions, etc.
  function! GetState()
    tabnew
    setl modifiable
    redir @z
    execute ":silent! :verbose map"
    redir END
    redir @Z
    execute ":silent! :verbose imap"
    execute ":silent! :verbose cmap"
    put z
    g/^[^\t]/j 2
    sort /.*\%2v/
    :%s/ Last set from \/Volumes\/LaCie6T\/Repos\/vim-1\//-->/
    if exists(':Tabularize')
      :%Tabularize /-->/l1
    endif
    redir END
    redir @y
    execute ":silent! :verbose let"
    vnew
    put y
    "sort /.*\%1v/
    redir END
  endfunction

  command! -complete=command GetState call GetState()
"  command! -nargs=1 -complete=command GetState call GetState(<q-args>)

  " DiffOrig Command:
  " Convenient command to see the difference between the current buffer and the
  " file it was loaded from, thus the changes you made.
  " Only define it when not defined already.
  if !exists(":DiffOrig")
   command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
           \ | wincmd p | diffthis
  endif


"""" Execute Selection in Tmux pane

  function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
  endfunction

  "If text is selected, save it in the v buffer and send that buffer it to tmux
  vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>

  "Select current paragraph and send it to tmux
  nmap <LocalLeader>vs vip<LocalLeader>vs<CR>



"""" Colorscheme And Settings Exploration:
  command! Hitest :so $VIMRUNTIME/syntax/hitest.vim
  command! Optwin :so $VIMRUNTIME/optwin.vim

"""" Highlighting Test Display
  function! HiOpt()
    :tabnew
    :ru $VIMRUNTIME/syntax/hitest.vim
    return
  endfunction
  command! Hiopt  :call HiOpt()

"""" Scratch
  "Thx SJL !
  command! ScratchToggle call ScratchToggle()

  function! ScratchToggle()
      if exists("w:is_scratch_window")
          unlet w:is_scratch_window
          exec "q"
      else
          exec "normal! :Sscratch\<cr>\<C-W>L"
          let w:is_scratch_window = 1
      endif
  endfunction

  nnoremap <silent> <leader><tab> :ScratchToggle<cr>


""" Function Key Maps:
    map     <silent> <F2> <plug>NERDTreeMirrorToggle<CR>
    ounmap  <F2>
   "nmap     <F3> :TagbarToggle<CR>
    nmap    <silent> <F3> :TlistToggle<CR>
    nmap    <silent> <F6> :GundoToggle<CR>

    noremap <silent> <F11> :BufExplorer<CR>
    noremap <silent> <LocalLeader>bs :BufExplorerHorizontalSplit<CR>
    noremap <silent> <LocalLeader>bv :BufExplorerVerticalSplit<CR>

    " Toggle paste
    " For some reason pastetoggle doesn't redraw the screen (thus the status bar
    " doesn't change) while :set paste! does, so I use that instead.
    " set pastetoggle=<F6>
    map     <silent> <F10> :set paste!<cr>


    "Shifted
    " map      <S-F2> :MBEToggle<CR>
    " ounmap   <S-F2>

    "Controlled

    "Alt'd

    "OS X Command'd

""" Other Key Maps: 
  map Q gq

  "This map yanks the visually-selected text and searches for it in C files
  vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>

  "Minibufexpl
" nmap <Leader>mbe      :MBEOpen<cr> 
" nmap <Leader>mbc      :MBEClose<cr> 
" nmap <Leader>mbt      :MBEToggle<cr>

  "Syntastic
  nmap <Leader>st       :SyntasticToggleMode
  nmap <Leader>sc       :SyntasticCheck
  nmap <Leader>si       :SyntasticInfo

  "Jekyll
  nmap <Leader>jb       :JekyllBuild<CR>
  nmap <Leader>jn       :JekyllPost<CR>
  nmap <Leader>jl       :JekyllList<CR>

  nmap <Leader>n        <plug>NERDTreeTabsToggle<CR>

  "Toggles
  nmap <Leader>l        :set list!<cr>
  nmap <Leader><Space>  :set hlsearch!<cr>
  nmap <Leader>f        :set foldenable!<cr>
  nmap <Leader>n        :set nu!<cr>

  "Vimux
  nmap <Leader>vo :VimuxOpenPane
  nmap <Leader>rb :call VimuxRunCommand("tmux source-file " . bufname("%"))<CR>
  nmap <Leader>vp :VimuxPromptCommand<CR>
  nmap <Leader>vl :VimuxRunLastCommand<CR>
  nmap <Leader>vi :VimuxInspectRunner<CR>
  nmap <Leader>vq :VimuxCloseRunner<CR>
  nmap <Leader>vx :VimuxInterruptRunner<CR>

""" Filetype Specific:
"""" Backups
  augroup ft_backup
    au!
    au BufWritePre * let &bex = '-' . strftime("%Y%b%d%X") . '~'
  augroup END

"""" Javascript
  augroup ft_javascript
    au!
    au FileType javascript setlocal foldmethod=marker
    au FileType javascript setlocal foldmarker={,}
    "au FileType javascript call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    "au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
  augroup END

"""" Makefile
  augroup ft_makefile
    au!
    au Filetype Makefile,*.make setlocal ts=4 sts=4 sw=0 noet
  augroup END

"""" Markdown
  augroup ft_markdown
    au!
    au BufNewFile,BufRead *.m*down,*.md setlocal filetype=markdown foldlevel=1
    au Filetype markdown nnoremap <buffer< <LocalLeader>m :silent !open -a Marked.app '%:p'<CR>

    " Use <localleader>1/2/3 to add headings.
    "au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
    "au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
    "au Filetype markdown nnoremap <buffer> <localleader>3 mzI###<space>`zllll <ESC>

    "au Filetype markdown nnoremap <buffer> <localleader>p VV:'<,'>!python -m json.tool<cr>
    "au Filetype markdown vnoremap <buffer> <localleader>p :!python -m json.tool<cr>
  augroup END

"""" MiniBufExplorer
  augroup ft_minibufexplr
    au!
    au Filetype minibufexpl :wincmd K
    au Filetype minibufexpl setlocal wfw
  augroup END

"""" Puppet
  augroup ft_puppet
      au!
      au Filetype puppet setlocal foldmethod=marker
      au Filetype puppet setlocal foldmarker={,}
  augroup END

"""" Python
  augroup ft_python
      au!
      au Filetype python setl tw=79 ts=4 sw=4 sts=4
      au Filetype python setl autoindent smarttab expandtab
      au BufRead *.py    setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
      au BufWritePre *.py normal! m`:%s/\s\+$//e``
  augroup END

"""" QuickFix
  augroup ft_quickfix
      au!
      au Filetype qf setlocal colorcolumn=0 nolist nocursorline nowrap tw=0
  augroup END

"""" Ruby
  augroup ft_ruby
    au!
    au Filetype ruby setlocal foldmethod=syntax
    au BufRead,BufNewFile Rakefile,Vagrantfile,Gemfile,Capfile setlocal filetype=ruby
  augroup END

"""" Vim 
  augroup ft_vim
    au!
    au Filetype vim setlocal ts=2 sts=2 sw=2 et
    au FileType help setlocal textwidth=78 wfw nonu nofen fdc=0
    au FileType help nmap <buffer> <CR> :tag<CR>
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
  augroup END

"""" Tmux
  augroup ft_tmux
    au!
    au BufNewFile,BufRead .tmux*.conf setlocal filetype=tmux
  augroup END

"""" YAML
  augroup ft_yaml
    au!
    au FileType yaml set ts=2 shiftwidth=2 et
  augroup END

"""" XML
  augroup ft_xml
    au!
    au FileType xml setlocal foldmethod=manual

    " Use <localleader>f to fold the current tag.
    au FileType xml nnoremap <buffer> <localleader>f Vatzf

    " Indent tag
    au FileType xml nnoremap <buffer> <localleader>= Vat=
  augroup END

"""" Blogging
  " TBD:

finish
"""" Mac-Specific Maps (from MacVim)
  " Make sure the '<' and 'C' flags are not included in 'cpoptions', otherwise
  " <CR> would not be recognized.  See ":help 'cpoptions'".
  let s:cpo_save = &cpo
  set cpo&vim

  "I'll use Solarized, thank you very much
  let macvim_skip_colorscheme=1

  " To make tabs more readable, the label only contains the tail of the file
  " name and the buffer modified flag.
  set guitablabel=%M%t

  " Send print jobs to Preview.app.  This does not delete the temporary ps file
  " that is generated by :hardcopy.
  set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error


  " This is so that HIG Cmd and Option movement mappings can be disabled by
  " adding the line
  "   let macvim_skip_cmd_opt_movement = 1
  " to ~/.vimrc.
    let macvim_skip_cmd_opt_movement = 1
    no   <D-Left>       <Home>
    no!  <D-Left>       <Home>
    no   <M-Left>       <C-Left>
    no!  <M-Left>       <C-Left>

    no   <D-Right>      <End>
    no!  <D-Right>      <End>
    no   <M-Right>      <C-Right>
    no!  <M-Right>      <C-Right>

    no   <D-Up>         <C-Home>
    ino  <D-Up>         <C-Home>
    map  <M-Up>         {
    imap <M-Up>         <C-o>{

    no   <D-Down>       <C-End>
    ino  <D-Down>       <C-End>
    map  <M-Down>       }
    imap <M-Down>       <C-o>}

    imap <M-BS>         <C-w>
    imap <D-BS>         <C-u>


    let macvim_hig_shift_movement = 0
    " Shift + special movement key (<S-Left>, etc.) and mouse starts insert mode
    set selectmode=mouse,key
    set keymodel=startsel,stopsel

    " HIG related shift + special movement key mappings
    nn   <S-D-Left>     <S-Home>
    vn   <S-D-Left>     <S-Home>
    ino  <S-D-Left>     <S-Home>
    nn   <S-M-Left>     <S-C-Left>
    vn   <S-M-Left>     <S-C-Left>
    ino  <S-M-Left>     <S-C-Left>

    nn   <S-D-Right>    <S-End>
    vn   <S-D-Right>    <S-End>
    ino  <S-D-Right>    <S-End>
    nn   <S-M-Right>    <S-C-Right>
    vn   <S-M-Right>    <S-C-Right>
    ino  <S-M-Right>    <S-C-Right>

    nn   <S-D-Up>       <S-C-Home>
    vn   <S-D-Up>       <S-C-Home>
    ino  <S-D-Up>       <S-C-Home>

    nn   <S-D-Down>     <S-C-End>
    vn   <S-D-Down>     <S-C-End>
    ino  <S-D-Down>     <S-C-End>


  " Restore the previous value of 'cpoptions'.
  let &cpo = s:cpo_save
  unlet s:cpo_save


