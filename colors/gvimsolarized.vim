" This scheme was created by CSApproxSnapshot
" on Fri, 02 Aug 2013

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=230 ctermfg=103 gui=NONE guibg=#fdf6e3 guifg=#657b83
    CSAHi gitcommitBranch term=bold cterm=bold ctermbg=bg ctermfg=169 gui=bold guibg=bg guifg=#d33682
    CSAHi gitcommitDiscardedType term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedType term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi gitcommitHeader term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi gitcommitUntrackedFile term=bold cterm=bold ctermbg=bg ctermfg=73 gui=bold guibg=bg guifg=#2aa198
    CSAHi gitcommitDiscardedFile term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedFile term=bold cterm=bold ctermbg=bg ctermfg=106 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitUnmergedFile term=bold cterm=bold ctermbg=bg ctermfg=178 gui=bold guibg=bg guifg=#b58900
    CSAHi gitcommitFile term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi SpecialKey term=bold cterm=bold ctermbg=230 ctermfg=145 gui=bold guibg=#eee8d5 guifg=#839496
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#839496
    CSAHi Directory term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=reverse cterm=reverse ctermbg=167 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi IncSearch term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=reverse ctermbg=178 ctermfg=fg gui=reverse guibg=bg guifg=#b58900
    CSAHi MoreMsg term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi LineNr term=NONE cterm=NONE ctermbg=230 ctermfg=145 gui=NONE guibg=#eee8d5 guifg=#93a1a1
    CSAHi ColorColumn term=NONE cterm=NONE ctermbg=230 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocStrongEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocLinkDefinition term=underline cterm=underline ctermbg=bg ctermfg=145 gui=underline guibg=bg guifg=#2aa198 guisp=#839496
    CSAHi pandocLinkDefinitionID term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocImageCaption term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=104 gui=bold,underline guibg=bg guifg=#6c71c4
    CSAHi SpellRare term=undercurl cterm=undercurl ctermbg=bg ctermfg=73 gui=undercurl guibg=bg guifg=fg guisp=#2aa198
    CSAHi SpellLocal term=undercurl cterm=undercurl ctermbg=bg ctermfg=178 gui=undercurl guibg=bg guifg=fg guisp=#b58900
    CSAHi Pmenu term=reverse cterm=reverse ctermbg=103 ctermfg=230 gui=reverse guibg=#eee8d5 guifg=#657b83
    CSAHi PmenuSel term=reverse cterm=reverse ctermbg=145 ctermfg=23 gui=reverse guibg=#073642 guifg=#93a1a1
    CSAHi PmenuSbar term=reverse cterm=reverse ctermbg=23 ctermfg=103 gui=reverse guibg=#657b83 guifg=#073642
    CSAHi PmenuThumb term=reverse cterm=reverse ctermbg=103 ctermfg=230 gui=reverse guibg=#fdf6e3 guifg=#657b83
    CSAHi TabLine term=underline cterm=underline ctermbg=230 ctermfg=103 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi TabLineSel term=reverse,underline cterm=reverse,underline ctermbg=145 ctermfg=103 gui=reverse,underline guibg=#073642 guifg=#93a1a1 guisp=#657b83
    CSAHi TabLineFill term=underline cterm=underline ctermbg=230 ctermfg=103 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi CursorColumn term=NONE cterm=NONE ctermbg=230 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocSuperscript term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlTagN term=bold cterm=bold ctermbg=bg ctermfg=102 gui=bold guibg=bg guifg=#586e75
    CSAHi htmlTagName term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi htmlSpecialTagName term=italic cterm=NONE ctermbg=bg ctermfg=74 gui=italic guibg=bg guifg=#268bd2
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#839496
    CSAHi javaScript term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocCitationRef term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocStyleDelim term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocEmphasis term=italic cterm=NONE ctermbg=bg ctermfg=103 gui=italic guibg=bg guifg=#657b83
    CSAHi pandocEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrongEmphasis term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi Cursor term=NONE cterm=NONE ctermbg=103 ctermfg=230 gui=NONE guibg=#657b83 guifg=#fdf6e3
    CSAHi pandocStrongEmphasisEmphasis term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrikeout term=reverse cterm=reverse ctermbg=145 ctermfg=fg gui=reverse guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimInline term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Comment term=italic cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#93a1a1
    CSAHi Constant term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Special term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi perlHereDoc term=NONE cterm=NONE ctermbg=230 ctermfg=102 gui=NONE guibg=#fdf6e3 guifg=#586e75
    CSAHi perlVarPlain term=NONE cterm=NONE ctermbg=230 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi perlStatementFileDesc term=NONE cterm=NONE ctermbg=230 ctermfg=73 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texStatement term=NONE cterm=NONE ctermbg=230 ctermfg=73 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texMathZoneX term=NONE cterm=NONE ctermbg=230 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texMathMatcher term=NONE cterm=NONE ctermbg=230 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texRefLabel term=NONE cterm=NONE ctermbg=230 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi rubyDefine term=bold cterm=bold ctermbg=230 ctermfg=102 gui=bold guibg=#fdf6e3 guifg=#586e75
    CSAHi cPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscript term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocRule term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocRuleLine term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi Statement term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi PreProc term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Type term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Underlined term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocMetadata term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi Todo term=bold cterm=bold ctermbg=bg ctermfg=169 gui=bold guibg=bg guifg=#d33682
    CSAHi Question term=bold cterm=bold ctermbg=bg ctermfg=73 gui=bold guibg=bg guifg=#2aa198
    CSAHi StatusLine term=reverse cterm=reverse ctermbg=102 ctermfg=230 gui=reverse guibg=#eee8d5 guifg=#586e75
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=145 ctermfg=230 gui=reverse guibg=#eee8d5 guifg=#839496
    CSAHi pandocStrongEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsImport term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi hsString term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#839496
    CSAHi hsStructure term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hs_hlFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi hsStatement term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Visual term=reverse cterm=reverse ctermbg=145 ctermfg=230 gui=reverse guibg=#fdf6e3 guifg=#93a1a1
    CSAHi hs_OpFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hs_DeclareFunction term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi hsVarSym term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi hsType term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsTypedef term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hsModuleName term=underline cterm=underline ctermbg=bg ctermfg=106 gui=underline guibg=bg guifg=#719e07
    CSAHi hsNiceOperator term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocTitleBlock term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTitleBlockTitle term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi CursorLine term=NONE cterm=NONE ctermbg=230 ctermfg=102 gui=NONE guibg=#eee8d5 guifg=fg guisp=#586e75
    CSAHi pandocFootnoteLink term=underline cterm=underline ctermbg=bg ctermfg=106 gui=underline guibg=bg guifg=#719e07
    CSAHi pandocFootnoteDefLink term=bold cterm=bold ctermbg=bg ctermfg=106 gui=bold guibg=bg guifg=#719e07
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocFootnoteInline term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=106 gui=bold,underline guibg=bg guifg=#719e07
    CSAHi pandocFootnote term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimSynType term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocCitationDelim term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitation term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitationID term=underline cterm=underline ctermbg=bg ctermfg=169 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocTitleComment term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocComment term=italic cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimBlock term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocBlockQuote term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader1 term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader2 term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocBlockQuoteLeader3 term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=230 ctermfg=103 gui=NONE guibg=#eee8d5 guifg=#657b83
    CSAHi MatchParen term=bold cterm=bold ctermbg=145 ctermfg=167 gui=bold guibg=#93a1a1 guifg=#dc322f
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi DiffAdd term=bold cterm=bold ctermbg=230 ctermfg=106 gui=bold guibg=#eee8d5 guifg=#719e07 guisp=#719e07
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCommentString term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi vimCommand term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi vimCmdSep term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader4 term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi pandocBlockQuoteLeader5 term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#657b83
    CSAHi pandocBlockQuoteLeader6 term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocListMarker term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocListReference term=underline cterm=underline ctermbg=bg ctermfg=169 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocDefinitionBlock term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionTerm term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionIndctr term=bold cterm=bold ctermbg=bg ctermfg=104 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisDefinition term=italic cterm=NONE ctermbg=bg ctermfg=104 gui=italic guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=104 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEscapePair term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#dc322f
    CSAHi pandocNonBreakingSpace term=reverse cterm=reverse ctermbg=167 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpExample term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#586e75
    CSAHi helpOption term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi helpNote term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpVim term=NONE cterm=NONE ctermbg=bg ctermfg=169 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpHyperTextJump term=underline cterm=underline ctermbg=bg ctermfg=74 gui=underline guibg=bg guifg=#268bd2
    CSAHi helpHyperTextEntry term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#839496
    CSAHi vimSynMtchOpt term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Error term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#dc322f
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocMetadataKey term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=104 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=104 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=104 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrikeoutDefinition term=reverse cterm=reverse ctermbg=104 ctermfg=fg gui=reverse guibg=bg guifg=#6c71c4
    CSAHi pandocVerbatimInlineDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSuperscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSubscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=104 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocTable term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructure term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocTableZebraLight term=NONE cterm=NONE ctermbg=230 ctermfg=74 gui=NONE guibg=#fdf6e3 guifg=#268bd2
    CSAHi pandocTableZebraDark term=NONE cterm=NONE ctermbg=230 ctermfg=74 gui=NONE guibg=#eee8d5 guifg=#268bd2
    CSAHi pandocEmphasisTable term=italic cterm=NONE ctermbg=bg ctermfg=74 gui=italic guibg=bg guifg=#268bd2
    CSAHi pandocEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrikeoutTable term=reverse cterm=reverse ctermbg=74 ctermfg=fg gui=reverse guibg=bg guifg=#268bd2
    CSAHi Folded term=bold,underline cterm=bold,underline ctermbg=230 ctermfg=230 gui=bold,underline guibg=#eee8d5 guifg=#657b83 guisp=#fdf6e3
    CSAHi pandocVerbatimInlineTable term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSuperscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#a52a2a
    CSAHi pandocHeadingMarker term=bold cterm=bold ctermbg=bg ctermfg=178 gui=bold guibg=bg guifg=#b58900
    CSAHi pandocEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=145 ctermfg=145 gui=NONE guibg=#839496 guifg=#839496
    CSAHi pandocStrongEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VisualNOS term=reverse cterm=reverse ctermbg=bg ctermfg=230 gui=reverse guibg=#eee8d5 guifg=fg
    CSAHi WarningMsg term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#dc322f
    CSAHi WildMenu term=reverse cterm=reverse ctermbg=23 ctermfg=230 gui=reverse guibg=#eee8d5 guifg=#073642
    CSAHi DiffChange term=bold cterm=bold ctermbg=230 ctermfg=178 gui=bold guibg=#eee8d5 guifg=#b58900 guisp=#b58900
    CSAHi hsImportLabel term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi DiffDelete term=bold cterm=bold ctermbg=230 ctermfg=167 gui=bold guibg=#eee8d5 guifg=#dc322f
    CSAHi DiffText term=bold cterm=bold ctermbg=230 ctermfg=74 gui=bold guibg=#eee8d5 guifg=#268bd2 guisp=#268bd2
    CSAHi pandocMetadataDelim term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=103 gui=NONE guibg=#bebebe guifg=#657b83
    CSAHi vimHiGroup term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi vimGroup term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=74 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi gitcommitComment term=italic cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#93a1a1
    CSAHi gitcommitUnmerged term=bold cterm=bold ctermbg=bg ctermfg=106 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitOnBranch term=bold cterm=bold ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#93a1a1
    CSAHi pandocStrikeoutHeading term=reverse cterm=reverse ctermbg=166 ctermfg=fg gui=reverse guibg=bg guifg=#cb4b16
    CSAHi pandocVerbatimInlineHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSuperscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSubscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocLinkDelim term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocLinkLabel term=underline cterm=underline ctermbg=bg ctermfg=74 gui=underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkText term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=74 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkURL term=underline cterm=underline ctermbg=bg ctermfg=145 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitle term=underline cterm=underline ctermbg=bg ctermfg=145 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitleDelim term=underline cterm=underline ctermbg=bg ctermfg=145 gui=underline guibg=bg guifg=#93a1a1 guisp=#839496
    CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi SpellBad term=undercurl cterm=undercurl ctermbg=bg ctermfg=167 gui=undercurl guibg=bg guifg=fg guisp=#dc322f
    CSAHi SpellCap term=undercurl cterm=undercurl ctermbg=bg ctermfg=104 gui=undercurl guibg=bg guifg=fg guisp=#6c71c4
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=231 ctermfg=109 gui=NONE guibg=#fdf6e3 guifg=#657b83
    CSAHi gitcommitBranch term=bold cterm=bold ctermbg=bg ctermfg=205 gui=bold guibg=bg guifg=#d33682
    CSAHi gitcommitDiscardedType term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedType term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi gitcommitHeader term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi gitcommitUntrackedFile term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#2aa198
    CSAHi gitcommitDiscardedFile term=bold cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedFile term=bold cterm=bold ctermbg=bg ctermfg=148 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitUnmergedFile term=bold cterm=bold ctermbg=bg ctermfg=178 gui=bold guibg=bg guifg=#b58900
    CSAHi gitcommitFile term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi SpecialKey term=bold cterm=bold ctermbg=231 ctermfg=146 gui=bold guibg=#eee8d5 guifg=#839496
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=146 gui=bold guibg=bg guifg=#839496
    CSAHi Directory term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=reverse cterm=reverse ctermbg=203 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi IncSearch term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=reverse ctermbg=178 ctermfg=fg gui=reverse guibg=bg guifg=#b58900
    CSAHi MoreMsg term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi LineNr term=NONE cterm=NONE ctermbg=231 ctermfg=152 gui=NONE guibg=#eee8d5 guifg=#93a1a1
    CSAHi ColorColumn term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocStrongEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocLinkDefinition term=underline cterm=underline ctermbg=bg ctermfg=146 gui=underline guibg=bg guifg=#2aa198 guisp=#839496
    CSAHi pandocLinkDefinitionID term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocImageCaption term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=147 gui=bold,underline guibg=bg guifg=#6c71c4
    CSAHi SpellRare term=undercurl cterm=undercurl ctermbg=bg ctermfg=80 gui=undercurl guibg=bg guifg=fg guisp=#2aa198
    CSAHi SpellLocal term=undercurl cterm=undercurl ctermbg=bg ctermfg=178 gui=undercurl guibg=bg guifg=fg guisp=#b58900
    CSAHi Pmenu term=reverse cterm=reverse ctermbg=109 ctermfg=231 gui=reverse guibg=#eee8d5 guifg=#657b83
    CSAHi PmenuSel term=reverse cterm=reverse ctermbg=152 ctermfg=24 gui=reverse guibg=#073642 guifg=#93a1a1
    CSAHi PmenuSbar term=reverse cterm=reverse ctermbg=24 ctermfg=109 gui=reverse guibg=#657b83 guifg=#073642
    CSAHi PmenuThumb term=reverse cterm=reverse ctermbg=109 ctermfg=231 gui=reverse guibg=#fdf6e3 guifg=#657b83
    CSAHi TabLine term=underline cterm=underline ctermbg=231 ctermfg=109 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi TabLineSel term=reverse,underline cterm=reverse,underline ctermbg=152 ctermfg=109 gui=reverse,underline guibg=#073642 guifg=#93a1a1 guisp=#657b83
    CSAHi TabLineFill term=underline cterm=underline ctermbg=231 ctermfg=109 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi CursorColumn term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocSuperscript term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlTagN term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#586e75
    CSAHi htmlTagName term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi htmlSpecialTagName term=italic cterm=NONE ctermbg=bg ctermfg=75 gui=italic guibg=bg guifg=#268bd2
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#839496
    CSAHi javaScript term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocCitationRef term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocStyleDelim term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocEmphasis term=italic cterm=NONE ctermbg=bg ctermfg=109 gui=italic guibg=bg guifg=#657b83
    CSAHi pandocEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrongEmphasis term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi Cursor term=NONE cterm=NONE ctermbg=109 ctermfg=231 gui=NONE guibg=#657b83 guifg=#fdf6e3
    CSAHi pandocStrongEmphasisEmphasis term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrikeout term=reverse cterm=reverse ctermbg=152 ctermfg=fg gui=reverse guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimInline term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Comment term=italic cterm=NONE ctermbg=bg ctermfg=152 gui=italic guibg=bg guifg=#93a1a1
    CSAHi Constant term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Special term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi perlHereDoc term=NONE cterm=NONE ctermbg=231 ctermfg=109 gui=NONE guibg=#fdf6e3 guifg=#586e75
    CSAHi perlVarPlain term=NONE cterm=NONE ctermbg=231 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi perlStatementFileDesc term=NONE cterm=NONE ctermbg=231 ctermfg=80 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texStatement term=NONE cterm=NONE ctermbg=231 ctermfg=80 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texMathZoneX term=NONE cterm=NONE ctermbg=231 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texMathMatcher term=NONE cterm=NONE ctermbg=231 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texRefLabel term=NONE cterm=NONE ctermbg=231 ctermfg=178 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi rubyDefine term=bold cterm=bold ctermbg=231 ctermfg=109 gui=bold guibg=#fdf6e3 guifg=#586e75
    CSAHi cPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscript term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocRule term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocRuleLine term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi Statement term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi PreProc term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Type term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Underlined term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocMetadata term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi Todo term=bold cterm=bold ctermbg=bg ctermfg=205 gui=bold guibg=bg guifg=#d33682
    CSAHi Question term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#2aa198
    CSAHi StatusLine term=reverse cterm=reverse ctermbg=109 ctermfg=231 gui=reverse guibg=#eee8d5 guifg=#586e75
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=146 ctermfg=231 gui=reverse guibg=#eee8d5 guifg=#839496
    CSAHi pandocStrongEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsImport term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi hsString term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#839496
    CSAHi hsStructure term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hs_hlFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi hsStatement term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Visual term=reverse cterm=reverse ctermbg=152 ctermfg=231 gui=reverse guibg=#fdf6e3 guifg=#93a1a1
    CSAHi hs_OpFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hs_DeclareFunction term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi hsVarSym term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi hsType term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsTypedef term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hsModuleName term=underline cterm=underline ctermbg=bg ctermfg=148 gui=underline guibg=bg guifg=#719e07
    CSAHi hsNiceOperator term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocTitleBlock term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTitleBlockTitle term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi CursorLine term=NONE cterm=NONE ctermbg=231 ctermfg=109 gui=NONE guibg=#eee8d5 guifg=fg guisp=#586e75
    CSAHi pandocFootnoteLink term=underline cterm=underline ctermbg=bg ctermfg=148 gui=underline guibg=bg guifg=#719e07
    CSAHi pandocFootnoteDefLink term=bold cterm=bold ctermbg=bg ctermfg=148 gui=bold guibg=bg guifg=#719e07
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocFootnoteInline term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=148 gui=bold,underline guibg=bg guifg=#719e07
    CSAHi pandocFootnote term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimSynType term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocCitationDelim term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitation term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitationID term=underline cterm=underline ctermbg=bg ctermfg=205 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocTitleComment term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocComment term=italic cterm=NONE ctermbg=bg ctermfg=152 gui=italic guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimBlock term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocBlockQuote term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader1 term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader2 term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocBlockQuoteLeader3 term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=231 ctermfg=109 gui=NONE guibg=#eee8d5 guifg=#657b83
    CSAHi MatchParen term=bold cterm=bold ctermbg=152 ctermfg=203 gui=bold guibg=#93a1a1 guifg=#dc322f
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi DiffAdd term=bold cterm=bold ctermbg=231 ctermfg=148 gui=bold guibg=#eee8d5 guifg=#719e07 guisp=#719e07
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCommentString term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi vimCommand term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi vimCmdSep term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader4 term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi pandocBlockQuoteLeader5 term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#657b83
    CSAHi pandocBlockQuoteLeader6 term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocListMarker term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocListReference term=underline cterm=underline ctermbg=bg ctermfg=205 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocDefinitionBlock term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionTerm term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionIndctr term=bold cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisDefinition term=italic cterm=NONE ctermbg=bg ctermfg=147 gui=italic guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEscapePair term=bold cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#dc322f
    CSAHi pandocNonBreakingSpace term=reverse cterm=reverse ctermbg=203 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpExample term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#586e75
    CSAHi helpOption term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi helpNote term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpVim term=NONE cterm=NONE ctermbg=bg ctermfg=205 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpHyperTextJump term=underline cterm=underline ctermbg=bg ctermfg=75 gui=underline guibg=bg guifg=#268bd2
    CSAHi helpHyperTextEntry term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#839496
    CSAHi vimSynMtchOpt term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Error term=bold cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#dc322f
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocMetadataKey term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=147 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrikeoutDefinition term=reverse cterm=reverse ctermbg=147 ctermfg=fg gui=reverse guibg=bg guifg=#6c71c4
    CSAHi pandocVerbatimInlineDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSuperscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSubscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocTable term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructure term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocTableZebraLight term=NONE cterm=NONE ctermbg=231 ctermfg=75 gui=NONE guibg=#fdf6e3 guifg=#268bd2
    CSAHi pandocTableZebraDark term=NONE cterm=NONE ctermbg=231 ctermfg=75 gui=NONE guibg=#eee8d5 guifg=#268bd2
    CSAHi pandocEmphasisTable term=italic cterm=NONE ctermbg=bg ctermfg=75 gui=italic guibg=bg guifg=#268bd2
    CSAHi pandocEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=75 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrikeoutTable term=reverse cterm=reverse ctermbg=75 ctermfg=fg gui=reverse guibg=bg guifg=#268bd2
    CSAHi Folded term=bold,underline cterm=bold,underline ctermbg=231 ctermfg=231 gui=bold,underline guibg=#eee8d5 guifg=#657b83 guisp=#fdf6e3
    CSAHi pandocVerbatimInlineTable term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSuperscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#a52a2a
    CSAHi pandocHeadingMarker term=bold cterm=bold ctermbg=bg ctermfg=178 gui=bold guibg=bg guifg=#b58900
    CSAHi pandocEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=146 ctermfg=146 gui=NONE guibg=#839496 guifg=#839496
    CSAHi pandocStrongEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VisualNOS term=reverse cterm=reverse ctermbg=bg ctermfg=231 gui=reverse guibg=#eee8d5 guifg=fg
    CSAHi WarningMsg term=bold cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#dc322f
    CSAHi WildMenu term=reverse cterm=reverse ctermbg=24 ctermfg=231 gui=reverse guibg=#eee8d5 guifg=#073642
    CSAHi DiffChange term=bold cterm=bold ctermbg=231 ctermfg=178 gui=bold guibg=#eee8d5 guifg=#b58900 guisp=#b58900
    CSAHi hsImportLabel term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi DiffDelete term=bold cterm=bold ctermbg=231 ctermfg=203 gui=bold guibg=#eee8d5 guifg=#dc322f
    CSAHi DiffText term=bold cterm=bold ctermbg=231 ctermfg=75 gui=bold guibg=#eee8d5 guifg=#268bd2 guisp=#268bd2
    CSAHi pandocMetadataDelim term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=109 gui=NONE guibg=#bebebe guifg=#657b83
    CSAHi vimHiGroup term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi vimGroup term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=75 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi gitcommitComment term=italic cterm=NONE ctermbg=bg ctermfg=152 gui=italic guibg=bg guifg=#93a1a1
    CSAHi gitcommitUnmerged term=bold cterm=bold ctermbg=bg ctermfg=148 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitOnBranch term=bold cterm=bold ctermbg=bg ctermfg=152 gui=bold guibg=bg guifg=#93a1a1
    CSAHi pandocStrikeoutHeading term=reverse cterm=reverse ctermbg=209 ctermfg=fg gui=reverse guibg=bg guifg=#cb4b16
    CSAHi pandocVerbatimInlineHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSuperscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSubscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocLinkDelim term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocLinkLabel term=underline cterm=underline ctermbg=bg ctermfg=75 gui=underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkText term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=75 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkURL term=underline cterm=underline ctermbg=bg ctermfg=146 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitle term=underline cterm=underline ctermbg=bg ctermfg=146 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitleDelim term=underline cterm=underline ctermbg=bg ctermfg=146 gui=underline guibg=bg guifg=#93a1a1 guisp=#839496
    CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi SpellBad term=undercurl cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#dc322f
    CSAHi SpellCap term=undercurl cterm=undercurl ctermbg=bg ctermfg=147 gui=undercurl guibg=bg guifg=fg guisp=#6c71c4
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=230 ctermfg=66 gui=NONE guibg=#fdf6e3 guifg=#657b83
    CSAHi gitcommitBranch term=bold cterm=bold ctermbg=bg ctermfg=168 gui=bold guibg=bg guifg=#d33682
    CSAHi gitcommitDiscardedType term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedType term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi gitcommitHeader term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi gitcommitUntrackedFile term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#2aa198
    CSAHi gitcommitDiscardedFile term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedFile term=bold cterm=bold ctermbg=bg ctermfg=70 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitUnmergedFile term=bold cterm=bold ctermbg=bg ctermfg=136 gui=bold guibg=bg guifg=#b58900
    CSAHi gitcommitFile term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi SpecialKey term=bold cterm=bold ctermbg=224 ctermfg=102 gui=bold guibg=#eee8d5 guifg=#839496
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=102 gui=bold guibg=bg guifg=#839496
    CSAHi Directory term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=reverse cterm=reverse ctermbg=166 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi IncSearch term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=reverse ctermbg=136 ctermfg=fg gui=reverse guibg=bg guifg=#b58900
    CSAHi MoreMsg term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi LineNr term=NONE cterm=NONE ctermbg=224 ctermfg=109 gui=NONE guibg=#eee8d5 guifg=#93a1a1
    CSAHi ColorColumn term=NONE cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocStrongEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocLinkDefinition term=underline cterm=underline ctermbg=bg ctermfg=102 gui=underline guibg=bg guifg=#2aa198 guisp=#839496
    CSAHi pandocLinkDefinitionID term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocImageCaption term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=62 gui=bold,underline guibg=bg guifg=#6c71c4
    CSAHi SpellRare term=undercurl cterm=undercurl ctermbg=bg ctermfg=36 gui=undercurl guibg=bg guifg=fg guisp=#2aa198
    CSAHi SpellLocal term=undercurl cterm=undercurl ctermbg=bg ctermfg=136 gui=undercurl guibg=bg guifg=fg guisp=#b58900
    CSAHi Pmenu term=reverse cterm=reverse ctermbg=66 ctermfg=224 gui=reverse guibg=#eee8d5 guifg=#657b83
    CSAHi PmenuSel term=reverse cterm=reverse ctermbg=109 ctermfg=23 gui=reverse guibg=#073642 guifg=#93a1a1
    CSAHi PmenuSbar term=reverse cterm=reverse ctermbg=23 ctermfg=66 gui=reverse guibg=#657b83 guifg=#073642
    CSAHi PmenuThumb term=reverse cterm=reverse ctermbg=66 ctermfg=230 gui=reverse guibg=#fdf6e3 guifg=#657b83
    CSAHi TabLine term=underline cterm=underline ctermbg=224 ctermfg=66 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi TabLineSel term=reverse,underline cterm=reverse,underline ctermbg=109 ctermfg=66 gui=reverse,underline guibg=#073642 guifg=#93a1a1 guisp=#657b83
    CSAHi TabLineFill term=underline cterm=underline ctermbg=224 ctermfg=66 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi CursorColumn term=NONE cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocSuperscript term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlTagN term=bold cterm=bold ctermbg=bg ctermfg=60 gui=bold guibg=bg guifg=#586e75
    CSAHi htmlTagName term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi htmlSpecialTagName term=italic cterm=NONE ctermbg=bg ctermfg=32 gui=italic guibg=bg guifg=#268bd2
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#839496
    CSAHi javaScript term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocCitationRef term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocStyleDelim term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocEmphasis term=italic cterm=NONE ctermbg=bg ctermfg=66 gui=italic guibg=bg guifg=#657b83
    CSAHi pandocEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrongEmphasis term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi Cursor term=NONE cterm=NONE ctermbg=66 ctermfg=230 gui=NONE guibg=#657b83 guifg=#fdf6e3
    CSAHi pandocStrongEmphasisEmphasis term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrikeout term=reverse cterm=reverse ctermbg=109 ctermfg=fg gui=reverse guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimInline term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi Comment term=italic cterm=NONE ctermbg=bg ctermfg=109 gui=italic guibg=bg guifg=#93a1a1
    CSAHi Constant term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Special term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi perlHereDoc term=NONE cterm=NONE ctermbg=230 ctermfg=60 gui=NONE guibg=#fdf6e3 guifg=#586e75
    CSAHi perlVarPlain term=NONE cterm=NONE ctermbg=230 ctermfg=136 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi perlStatementFileDesc term=NONE cterm=NONE ctermbg=230 ctermfg=36 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texStatement term=NONE cterm=NONE ctermbg=230 ctermfg=36 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texMathZoneX term=NONE cterm=NONE ctermbg=230 ctermfg=136 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texMathMatcher term=NONE cterm=NONE ctermbg=230 ctermfg=136 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texRefLabel term=NONE cterm=NONE ctermbg=230 ctermfg=136 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi rubyDefine term=bold cterm=bold ctermbg=230 ctermfg=60 gui=bold guibg=#fdf6e3 guifg=#586e75
    CSAHi cPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscript term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocRule term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocRuleLine term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi Statement term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi PreProc term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Type term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi Underlined term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocMetadata term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi Todo term=bold cterm=bold ctermbg=bg ctermfg=168 gui=bold guibg=bg guifg=#d33682
    CSAHi Question term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#2aa198
    CSAHi StatusLine term=reverse cterm=reverse ctermbg=60 ctermfg=224 gui=reverse guibg=#eee8d5 guifg=#586e75
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=102 ctermfg=224 gui=reverse guibg=#eee8d5 guifg=#839496
    CSAHi pandocStrongEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsImport term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi hsString term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#839496
    CSAHi hsStructure term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hs_hlFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi hsStatement term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Visual term=reverse cterm=reverse ctermbg=109 ctermfg=230 gui=reverse guibg=#fdf6e3 guifg=#93a1a1
    CSAHi hs_OpFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi hs_DeclareFunction term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi hsVarSym term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi hsType term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsTypedef term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hsModuleName term=underline cterm=underline ctermbg=bg ctermfg=70 gui=underline guibg=bg guifg=#719e07
    CSAHi hsNiceOperator term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocTitleBlock term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTitleBlockTitle term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi CursorLine term=NONE cterm=NONE ctermbg=224 ctermfg=60 gui=NONE guibg=#eee8d5 guifg=fg guisp=#586e75
    CSAHi pandocFootnoteLink term=underline cterm=underline ctermbg=bg ctermfg=70 gui=underline guibg=bg guifg=#719e07
    CSAHi pandocFootnoteDefLink term=bold cterm=bold ctermbg=bg ctermfg=70 gui=bold guibg=bg guifg=#719e07
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocFootnoteInline term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=70 gui=bold,underline guibg=bg guifg=#719e07
    CSAHi pandocFootnote term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimSynType term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocCitationDelim term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitation term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitationID term=underline cterm=underline ctermbg=bg ctermfg=168 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocTitleComment term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocComment term=italic cterm=NONE ctermbg=bg ctermfg=109 gui=italic guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimBlock term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocBlockQuote term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader1 term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader2 term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocBlockQuoteLeader3 term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=224 ctermfg=66 gui=NONE guibg=#eee8d5 guifg=#657b83
    CSAHi MatchParen term=bold cterm=bold ctermbg=109 ctermfg=166 gui=bold guibg=#93a1a1 guifg=#dc322f
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi DiffAdd term=bold cterm=bold ctermbg=224 ctermfg=70 gui=bold guibg=#eee8d5 guifg=#719e07 guisp=#719e07
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCommentString term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi vimCommand term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi vimCmdSep term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader4 term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi pandocBlockQuoteLeader5 term=NONE cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#657b83
    CSAHi pandocBlockQuoteLeader6 term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocListMarker term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocListReference term=underline cterm=underline ctermbg=bg ctermfg=168 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocDefinitionBlock term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionTerm term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionIndctr term=bold cterm=bold ctermbg=bg ctermfg=62 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisDefinition term=italic cterm=NONE ctermbg=bg ctermfg=62 gui=italic guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=62 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEscapePair term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#dc322f
    CSAHi pandocNonBreakingSpace term=reverse cterm=reverse ctermbg=166 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpExample term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#586e75
    CSAHi helpOption term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi helpNote term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpVim term=NONE cterm=NONE ctermbg=bg ctermfg=168 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpHyperTextJump term=underline cterm=underline ctermbg=bg ctermfg=32 gui=underline guibg=bg guifg=#268bd2
    CSAHi helpHyperTextEntry term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#839496
    CSAHi vimSynMtchOpt term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi Error term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#dc322f
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocMetadataKey term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=62 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=62 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=62 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrikeoutDefinition term=reverse cterm=reverse ctermbg=62 ctermfg=fg gui=reverse guibg=bg guifg=#6c71c4
    CSAHi pandocVerbatimInlineDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSuperscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSubscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=62 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocTable term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructure term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocTableZebraLight term=NONE cterm=NONE ctermbg=230 ctermfg=32 gui=NONE guibg=#fdf6e3 guifg=#268bd2
    CSAHi pandocTableZebraDark term=NONE cterm=NONE ctermbg=224 ctermfg=32 gui=NONE guibg=#eee8d5 guifg=#268bd2
    CSAHi pandocEmphasisTable term=italic cterm=NONE ctermbg=bg ctermfg=32 gui=italic guibg=bg guifg=#268bd2
    CSAHi pandocEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrikeoutTable term=reverse cterm=reverse ctermbg=32 ctermfg=fg gui=reverse guibg=bg guifg=#268bd2
    CSAHi Folded term=bold,underline cterm=bold,underline ctermbg=224 ctermfg=230 gui=bold,underline guibg=#eee8d5 guifg=#657b83 guisp=#fdf6e3
    CSAHi pandocVerbatimInlineTable term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSuperscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=124 gui=bold guibg=bg guifg=#a52a2a
    CSAHi pandocHeadingMarker term=bold cterm=bold ctermbg=bg ctermfg=136 gui=bold guibg=bg guifg=#b58900
    CSAHi pandocEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=102 ctermfg=102 gui=NONE guibg=#839496 guifg=#839496
    CSAHi pandocStrongEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VisualNOS term=reverse cterm=reverse ctermbg=bg ctermfg=224 gui=reverse guibg=#eee8d5 guifg=fg
    CSAHi WarningMsg term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#dc322f
    CSAHi WildMenu term=reverse cterm=reverse ctermbg=23 ctermfg=224 gui=reverse guibg=#eee8d5 guifg=#073642
    CSAHi DiffChange term=bold cterm=bold ctermbg=224 ctermfg=136 gui=bold guibg=#eee8d5 guifg=#b58900 guisp=#b58900
    CSAHi hsImportLabel term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi DiffDelete term=bold cterm=bold ctermbg=224 ctermfg=166 gui=bold guibg=#eee8d5 guifg=#dc322f
    CSAHi DiffText term=bold cterm=bold ctermbg=224 ctermfg=32 gui=bold guibg=#eee8d5 guifg=#268bd2 guisp=#268bd2
    CSAHi pandocMetadataDelim term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=66 gui=NONE guibg=#bebebe guifg=#657b83
    CSAHi vimHiGroup term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi vimGroup term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=32 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi gitcommitComment term=italic cterm=NONE ctermbg=bg ctermfg=109 gui=italic guibg=bg guifg=#93a1a1
    CSAHi gitcommitUnmerged term=bold cterm=bold ctermbg=bg ctermfg=70 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitOnBranch term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#93a1a1
    CSAHi pandocStrikeoutHeading term=reverse cterm=reverse ctermbg=166 ctermfg=fg gui=reverse guibg=bg guifg=#cb4b16
    CSAHi pandocVerbatimInlineHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSuperscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSubscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocLinkDelim term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocLinkLabel term=underline cterm=underline ctermbg=bg ctermfg=32 gui=underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkText term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=32 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkURL term=underline cterm=underline ctermbg=bg ctermfg=102 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitle term=underline cterm=underline ctermbg=bg ctermfg=102 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitleDelim term=underline cterm=underline ctermbg=bg ctermfg=102 gui=underline guibg=bg guifg=#93a1a1 guisp=#839496
    CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi SpellBad term=undercurl cterm=undercurl ctermbg=bg ctermfg=166 gui=undercurl guibg=bg guifg=fg guisp=#dc322f
    CSAHi SpellCap term=undercurl cterm=undercurl ctermbg=bg ctermfg=62 gui=undercurl guibg=bg guifg=fg guisp=#6c71c4
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=78 ctermfg=37 gui=NONE guibg=#fdf6e3 guifg=#657b83
    CSAHi gitcommitBranch term=bold cterm=bold ctermbg=bg ctermfg=49 gui=bold guibg=bg guifg=#d33682
    CSAHi gitcommitDiscardedType term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedType term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi gitcommitHeader term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi gitcommitUntrackedFile term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2aa198
    CSAHi gitcommitDiscardedFile term=bold cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#dc322f
    CSAHi gitcommitSelectedFile term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitUnmergedFile term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#b58900
    CSAHi gitcommitFile term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi SpecialKey term=bold cterm=bold ctermbg=78 ctermfg=83 gui=bold guibg=#eee8d5 guifg=#839496
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=83 gui=bold guibg=bg guifg=#839496
    CSAHi Directory term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=reverse cterm=reverse ctermbg=48 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi IncSearch term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=reverse ctermbg=52 ctermfg=fg gui=reverse guibg=bg guifg=#b58900
    CSAHi MoreMsg term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi LineNr term=NONE cterm=NONE ctermbg=78 ctermfg=37 gui=NONE guibg=#eee8d5 guifg=#93a1a1
    CSAHi ColorColumn term=NONE cterm=NONE ctermbg=78 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocStrongEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocLinkDefinition term=underline cterm=underline ctermbg=bg ctermfg=83 gui=underline guibg=bg guifg=#2aa198 guisp=#839496
    CSAHi pandocLinkDefinitionID term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocImageCaption term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=38 gui=bold,underline guibg=bg guifg=#6c71c4
    CSAHi SpellRare term=undercurl cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#2aa198
    CSAHi SpellLocal term=undercurl cterm=undercurl ctermbg=bg ctermfg=52 gui=undercurl guibg=bg guifg=fg guisp=#b58900
    CSAHi Pmenu term=reverse cterm=reverse ctermbg=37 ctermfg=78 gui=reverse guibg=#eee8d5 guifg=#657b83
    CSAHi PmenuSel term=reverse cterm=reverse ctermbg=37 ctermfg=16 gui=reverse guibg=#073642 guifg=#93a1a1
    CSAHi PmenuSbar term=reverse cterm=reverse ctermbg=16 ctermfg=37 gui=reverse guibg=#657b83 guifg=#073642
    CSAHi PmenuThumb term=reverse cterm=reverse ctermbg=37 ctermfg=78 gui=reverse guibg=#fdf6e3 guifg=#657b83
    CSAHi TabLine term=underline cterm=underline ctermbg=78 ctermfg=37 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi TabLineSel term=reverse,underline cterm=reverse,underline ctermbg=37 ctermfg=37 gui=reverse,underline guibg=#073642 guifg=#93a1a1 guisp=#657b83
    CSAHi TabLineFill term=underline cterm=underline ctermbg=78 ctermfg=37 gui=underline guibg=#eee8d5 guifg=#657b83 guisp=#657b83
    CSAHi CursorColumn term=NONE cterm=NONE ctermbg=78 ctermfg=fg gui=NONE guibg=#eee8d5 guifg=fg
    CSAHi pandocSuperscript term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi htmlTagN term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#586e75
    CSAHi htmlTagName term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi htmlSpecialTagName term=italic cterm=NONE ctermbg=bg ctermfg=22 gui=italic guibg=bg guifg=#268bd2
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#839496
    CSAHi javaScript term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocCitationRef term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocStyleDelim term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocEmphasis term=italic cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#657b83
    CSAHi pandocEmphasisNested term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrongEmphasis term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi Cursor term=NONE cterm=NONE ctermbg=37 ctermfg=78 gui=NONE guibg=#657b83 guifg=#fdf6e3
    CSAHi pandocStrongEmphasisEmphasis term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi pandocStrikeout term=reverse cterm=reverse ctermbg=37 ctermfg=fg gui=reverse guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimInline term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi Comment term=italic cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#93a1a1
    CSAHi Constant term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Special term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi perlHereDoc term=NONE cterm=NONE ctermbg=78 ctermfg=37 gui=NONE guibg=#fdf6e3 guifg=#586e75
    CSAHi perlVarPlain term=NONE cterm=NONE ctermbg=78 ctermfg=52 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi perlStatementFileDesc term=NONE cterm=NONE ctermbg=78 ctermfg=21 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texStatement term=NONE cterm=NONE ctermbg=78 ctermfg=21 gui=NONE guibg=#fdf6e3 guifg=#2aa198
    CSAHi texMathZoneX term=NONE cterm=NONE ctermbg=78 ctermfg=52 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texMathMatcher term=NONE cterm=NONE ctermbg=78 ctermfg=52 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi texRefLabel term=NONE cterm=NONE ctermbg=78 ctermfg=52 gui=NONE guibg=#fdf6e3 guifg=#b58900
    CSAHi rubyDefine term=bold cterm=bold ctermbg=78 ctermfg=37 gui=bold guibg=#fdf6e3 guifg=#586e75
    CSAHi cPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscript term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocRule term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocRuleLine term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi Statement term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi PreProc term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Type term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi Underlined term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocMetadata term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi Todo term=bold cterm=bold ctermbg=bg ctermfg=49 gui=bold guibg=bg guifg=#d33682
    CSAHi Question term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2aa198
    CSAHi StatusLine term=reverse cterm=reverse ctermbg=37 ctermfg=78 gui=reverse guibg=#eee8d5 guifg=#586e75
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=83 ctermfg=78 gui=reverse guibg=#eee8d5 guifg=#839496
    CSAHi pandocStrongEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsImport term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi hsString term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#839496
    CSAHi hsStructure term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hs_hlFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi hsStatement term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Visual term=reverse cterm=reverse ctermbg=37 ctermfg=78 gui=reverse guibg=#fdf6e3 guifg=#93a1a1
    CSAHi hs_OpFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi hs_DeclareFunction term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi hsVarSym term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi hsType term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi hsTypedef term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi hsModuleName term=underline cterm=underline ctermbg=bg ctermfg=36 gui=underline guibg=bg guifg=#719e07
    CSAHi hsNiceOperator term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocTitleBlock term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTitleBlockTitle term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi CursorLine term=NONE cterm=NONE ctermbg=78 ctermfg=37 gui=NONE guibg=#eee8d5 guifg=fg guisp=#586e75
    CSAHi pandocFootnoteLink term=underline cterm=underline ctermbg=bg ctermfg=36 gui=underline guibg=bg guifg=#719e07
    CSAHi pandocFootnoteDefLink term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#719e07
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocFootnoteInline term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=36 gui=bold,underline guibg=bg guifg=#719e07
    CSAHi pandocFootnote term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimSynType term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocCitationDelim term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitation term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocCitationID term=underline cterm=underline ctermbg=bg ctermfg=49 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocTitleComment term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocComment term=italic cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#93a1a1
    CSAHi pandocVerbatimBlock term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi pandocBlockQuote term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader1 term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader2 term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi pandocBlockQuoteLeader3 term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=78 ctermfg=37 gui=NONE guibg=#eee8d5 guifg=#657b83
    CSAHi MatchParen term=bold cterm=bold ctermbg=37 ctermfg=48 gui=bold guibg=#93a1a1 guifg=#dc322f
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi DiffAdd term=bold cterm=bold ctermbg=78 ctermfg=36 gui=bold guibg=#eee8d5 guifg=#719e07 guisp=#719e07
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCommentString term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi vimCommand term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi vimCmdSep term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocBlockQuoteLeader4 term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi pandocBlockQuoteLeader5 term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#657b83
    CSAHi pandocBlockQuoteLeader6 term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocListMarker term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi pandocListReference term=underline cterm=underline ctermbg=bg ctermfg=49 gui=underline guibg=bg guifg=#d33682
    CSAHi pandocDefinitionBlock term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionTerm term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocDefinitionIndctr term=bold cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisDefinition term=italic cterm=NONE ctermbg=bg ctermfg=38 gui=italic guibg=bg guifg=#6c71c4
    CSAHi pandocEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocEscapePair term=bold cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#dc322f
    CSAHi pandocNonBreakingSpace term=reverse cterm=reverse ctermbg=48 ctermfg=fg gui=reverse guibg=bg guifg=#dc322f
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpExample term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#586e75
    CSAHi helpOption term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi helpNote term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpVim term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#d33682
    CSAHi helpHyperTextJump term=underline cterm=underline ctermbg=bg ctermfg=22 gui=underline guibg=bg guifg=#268bd2
    CSAHi helpHyperTextEntry term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#839496
    CSAHi vimSynMtchOpt term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi Error term=bold cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#dc322f
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocMetadataKey term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisNestedDefinition term=bold cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrongEmphasisEmphasisDefinition term=bold cterm=bold ctermbg=bg ctermfg=38 gui=bold guibg=bg guifg=#6c71c4
    CSAHi pandocStrikeoutDefinition term=reverse cterm=reverse ctermbg=38 ctermfg=fg gui=reverse guibg=bg guifg=#6c71c4
    CSAHi pandocVerbatimInlineDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSuperscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocSubscriptDefinition term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6c71c4
    CSAHi pandocTable term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructure term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocTableStructre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pandocTableZebraLight term=NONE cterm=NONE ctermbg=78 ctermfg=22 gui=NONE guibg=#fdf6e3 guifg=#268bd2
    CSAHi pandocTableZebraDark term=NONE cterm=NONE ctermbg=78 ctermfg=22 gui=NONE guibg=#eee8d5 guifg=#268bd2
    CSAHi pandocEmphasisTable term=italic cterm=NONE ctermbg=bg ctermfg=22 gui=italic guibg=bg guifg=#268bd2
    CSAHi pandocEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisNestedTable term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrongEmphasisEmphasisTable term=bold cterm=bold ctermbg=bg ctermfg=22 gui=bold guibg=bg guifg=#268bd2
    CSAHi pandocStrikeoutTable term=reverse cterm=reverse ctermbg=22 ctermfg=fg gui=reverse guibg=bg guifg=#268bd2
    CSAHi Folded term=bold,underline cterm=bold,underline ctermbg=78 ctermfg=78 gui=bold,underline guibg=#eee8d5 guifg=#657b83 guisp=#fdf6e3
    CSAHi pandocVerbatimInlineTable term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSuperscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi pandocSubscriptTable term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#a52a2a
    CSAHi pandocHeadingMarker term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#b58900
    CSAHi pandocEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VertSplit term=NONE cterm=NONE ctermbg=83 ctermfg=83 gui=NONE guibg=#839496 guifg=#839496
    CSAHi pandocStrongEmphasisNestedHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocStrongEmphasisEmphasisHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi VisualNOS term=reverse cterm=reverse ctermbg=bg ctermfg=78 gui=reverse guibg=#eee8d5 guifg=fg
    CSAHi WarningMsg term=bold cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#dc322f
    CSAHi WildMenu term=reverse cterm=reverse ctermbg=16 ctermfg=78 gui=reverse guibg=#eee8d5 guifg=#073642
    CSAHi DiffChange term=bold cterm=bold ctermbg=78 ctermfg=52 gui=bold guibg=#eee8d5 guifg=#b58900 guisp=#b58900
    CSAHi hsImportLabel term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi DiffDelete term=bold cterm=bold ctermbg=78 ctermfg=48 gui=bold guibg=#eee8d5 guifg=#dc322f
    CSAHi DiffText term=bold cterm=bold ctermbg=78 ctermfg=22 gui=bold guibg=#eee8d5 guifg=#268bd2 guisp=#268bd2
    CSAHi pandocMetadataDelim term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=37 gui=NONE guibg=#bebebe guifg=#657b83
    CSAHi vimHiGroup term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi vimGroup term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=22 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi gitcommitComment term=italic cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#93a1a1
    CSAHi gitcommitUnmerged term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#719e07
    CSAHi gitcommitOnBranch term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#93a1a1
    CSAHi pandocStrikeoutHeading term=reverse cterm=reverse ctermbg=52 ctermfg=fg gui=reverse guibg=bg guifg=#cb4b16
    CSAHi pandocVerbatimInlineHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSuperscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocSubscriptHeading term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi pandocLinkDelim term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#93a1a1
    CSAHi pandocLinkLabel term=underline cterm=underline ctermbg=bg ctermfg=22 gui=underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkText term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=22 gui=bold,underline guibg=bg guifg=#268bd2
    CSAHi pandocLinkURL term=underline cterm=underline ctermbg=bg ctermfg=83 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitle term=underline cterm=underline ctermbg=bg ctermfg=83 gui=underline guibg=bg guifg=#839496
    CSAHi pandocLinkTitleDelim term=underline cterm=underline ctermbg=bg ctermfg=83 gui=underline guibg=bg guifg=#93a1a1 guisp=#839496
    CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi SpellBad term=undercurl cterm=undercurl ctermbg=bg ctermfg=48 gui=undercurl guibg=bg guifg=fg guisp=#dc322f
    CSAHi SpellCap term=undercurl cterm=undercurl ctermbg=bg ctermfg=38 gui=undercurl guibg=bg guifg=fg guisp=#6c71c4
endif

if 1
    delcommand CSAHi
endif
