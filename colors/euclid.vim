" File:       euclid.vim
" Maintainer: vuchvu <akisamegane7100@gmail.com>
" Modified:   2022-08-29 21:56+0900
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'euclid'

if &background == 'light'
  hi Normal ctermbg=255 ctermfg=241 guibg=#eeeeee guifg=#626262
  hi ColorColumn cterm=NONE ctermbg=255 ctermfg=NONE guibg=#eeeeee guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=255 ctermfg=NONE guibg=#eeeeee guifg=NONE
  hi CursorLine cterm=NONE ctermbg=255 ctermfg=NONE guibg=#eeeeee guifg=NONE
  hi Comment ctermfg=252 guifg=#d0d0d0
  hi Conceal ctermbg=255 ctermfg=252 guibg=#eeeeee guifg=#d0d0d0
  hi Constant ctermfg=105 guifg=#8787ff
  hi Cursor ctermbg=172 ctermfg=255 guibg=#d78700 guifg=#eeeeee
  hi CursorLineNr cterm=NONE ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi Delimiter ctermfg=241 guifg=#626262
  hi DiffAdd ctermbg=77 ctermfg=252 guibg=#5fd75f guifg=#d0d0d0
  hi DiffChange ctermbg=39 ctermfg=252 guibg=#00afff guifg=#d0d0d0
  hi DiffDelete cterm=NONE ctermbg=202 ctermfg=252 gui=NONE guibg=#ff5f00 guifg=#d0d0d0
  hi DiffText cterm=NONE ctermbg=123 ctermfg=252 gui=NONE guibg=#87ffff guifg=#d0d0d0
  hi Directory ctermfg=39 guifg=#00afff
  hi Error ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi ErrorMsg ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi WarningMsg ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi EndOfBuffer ctermfg=252 guifg=#d0d0d0
  hi NonText ctermfg=252 guifg=#d0d0d0
  hi Whitespace ctermfg=252 guifg=#d0d0d0
  hi Folded ctermbg=255 ctermfg=255 guibg=#5fafd7 guifg=#eeeeee
  hi FoldColumn ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi Function ctermfg=26 guifg=#005fd7
  hi Identifier cterm=NONE ctermfg=39 guifg=#00afff
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=26 guifg=#005fd7
  hi IncSearch cterm=reverse ctermbg=123 ctermfg=NONE gui=reverse guibg=#87ffff guifg=NONE term=reverse
  hi LineNr ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi MatchParen ctermbg=239 ctermfg=252 guibg=#4e4e4e guifg=#d0d0d0
  hi ModeMsg ctermfg=74 guifg=#5fafd7
  hi MoreMsg ctermfg=172 guifg=#d78700
  hi Operator ctermfg=26 guifg=#005fd7
  hi Pmenu ctermbg=74 ctermfg=255 guibg=#5fafd7 guifg=#eeeeee
  hi PmenuSbar ctermbg=74 ctermfg=NONE guibg=#5fafd7 guifg=NONE
  hi PmenuSel ctermbg=123 ctermfg=241 guibg=#87ffff guifg=#626262
  hi PmenuThumb ctermbg=255 ctermfg=NONE guibg=#eeeeee guifg=NONE
  hi PreProc ctermfg=35 guifg=#00af5f
  hi Question ctermfg=35 guifg=#00af5f
  hi QuickFixLine ctermbg=123 ctermfg=241 guibg=#87ffff guifg=#626262
  hi Search ctermbg=123 ctermfg=255 guibg=#87ffff guifg=#626262
  hi SignColumn ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi Special ctermfg=35 guifg=#00af5f
  hi SpecialKey ctermfg=252 guifg=#d0d0d0
  hi SpellBad ctermbg=172 ctermfg=241 gui=undercurl guifg=NONE guisp=#d78700
  hi SpellCap ctermbg=26 ctermfg=241 gui=undercurl guifg=NONE guisp=#005fd7
  hi SpellLocal ctermbg=39 ctermfg=241 gui=undercurl guifg=NONE guisp=#00afff
  hi SpellRare ctermbg=105 ctermfg=241 gui=undercurl guifg=NONE guisp=#8787ff
  hi Statement ctermfg=26 gui=NONE guifg=#005fd7
  hi StatusLine cterm=reverse ctermbg=74 ctermfg=123 gui=reverse guibg=#5fafd7 guifg=#87ffff term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=74 ctermfg=123 gui=reverse guibg=#5fafd7 guifg=#87ffff term=reverse
  hi StatusLineNC cterm=reverse ctermbg=123 ctermfg=74 gui=reverse guibg=#87ffff guifg=#5fafd7
  hi StatusLineTermNC cterm=reverse ctermbg=123 ctermfg=74 gui=reverse guibg=#87ffff guifg=#5fafd7
  hi StorageClass ctermfg=26 guifg=#005fd7
  hi String ctermfg=39 guifg=#00afff
  hi Structure ctermfg=26 guifg=#005fd7
  hi TabLine cterm=NONE ctermbg=74 ctermfg=123 gui=NONE guibg=#5fafd7 guifg=#87ffff
  hi TabLineFill cterm=reverse ctermbg=123 ctermfg=74 gui=reverse guibg=#87ffff guifg=#5fafd7
  hi TabLineSel cterm=NONE ctermbg=255 ctermfg=241 gui=NONE guibg=#eeeeee guifg=#626262
  hi TermCursorNC ctermbg=252 ctermfg=255 guibg=#d0d0d0 guifg=#eeeeee
  hi Title ctermfg=172 gui=NONE guifg=#d78700
  hi Todo ctermbg=172 ctermfg=255 guibg=#d78700 guifg=#eeeeee
  hi Type ctermfg=26 gui=NONE guifg=#005fd7
  hi Underlined cterm=underline ctermfg=26 gui=underline guifg=#005fd7 term=underline
  hi VertSplit cterm=NONE ctermbg=255 ctermfg=74 gui=NONE guibg=#eeeeee guifg=#5fafd7
  hi Visual ctermbg=123 ctermfg=NONE guibg=#87ffff guifg=NONE
  hi VisualNOS ctermbg=123 ctermfg=NONE guibg=#87ffff guifg=NONE
  hi WildMenu ctermbg=252 ctermfg=74 guibg=#eeeeee guifg=#5fafd7
  hi diffAdded ctermfg=35 guifg=#00af5f
  hi diffRemoved ctermfg=172 guifg=#d78700
  hi ALEErrorSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi ALEWarningSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi ALEVirtualTextError ctermfg=172 guifg=#d78700
  hi ALEVirtualTextWarning ctermfg=172 guifg=#d78700
  hi CtrlPMode1 ctermbg=147 ctermfg=255 guibg=#afafff guifg=#eeeeee
  hi EasyMotionShade ctermfg=74 guifg=#5fafd7
  hi EasyMotionTarget ctermfg=35 guifg=#00af5f
  hi EasyMotionTarget2First ctermfg=172 guifg=#d78700
  hi EasyMotionTarget2Second ctermfg=172 guifg=#d78700
  hi GitGutterAdd ctermbg=255 ctermfg=35 guibg=#eeeeee guifg=#00af5f
  hi GitGutterChange ctermbg=255 ctermfg=39 guibg=#eeeeee guifg=#00afff
  hi GitGutterChangeDelete ctermbg=255 ctermfg=39 guibg=#eeeeee guifg=#00afff
  hi GitGutterDelete ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi gitmessengerEndOfBuffer ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi gitmessengerPopupNormal ctermbg=255 ctermfg=241 guibg=#eeeeee guifg=#626262
  hi Sneak ctermbg=105 ctermfg=255 guibg=#8787ff guifg=#eeeeee
  hi SneakScope ctermbg=123 ctermfg=252 guibg=#87ffff guifg=#d0d0d0
  hi SyntasticErrorSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi SyntasticStyleErrorSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi SyntasticStyleWarningSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi SyntasticWarningSign ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi TSFunction ctermfg=74 guifg=#5fafd7
  hi TSFunctionBuiltin ctermfg=74 guifg=#5fafd7
  hi TSFunctionMacro ctermfg=74 guifg=#5fafd7
  hi TSMethod ctermfg=74 guifg=#5fafd7
  hi TSURI cterm=underline ctermfg=39 gui=underline guifg=#00afff term=underline
  hi ZenSpace ctermbg=172 guibg=#d78700
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=39 gui=underline guisp=#00afff term=underline
  hi DiagnosticInfo ctermfg=39 guifg=#00afff
  hi DiagnosticSignInfo ctermbg=255 ctermfg=39 guibg=#eeeeee guifg=#00afff
  hi DiagnosticUnderlineHint cterm=underline ctermfg=252 gui=underline guisp=#d0d0d0 term=underline
  hi DiagnosticHint ctermfg=252 guifg=#d0d0d0
  hi DiagnosticSignHint ctermbg=255 ctermfg=252 guibg=#eeeeee guifg=#d0d0d0
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=172 gui=underline guisp=#d78700 term=underline
  hi DiagnosticWarn ctermfg=172 guifg=#d78700
  hi DiagnosticSignWarn ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi DiagnosticUnderlineError cterm=underline ctermfg=172 gui=underline guisp=#d78700 term=underline
  hi DiagnosticError ctermfg=172 guifg=#d78700
  hi DiagnosticSignError ctermbg=255 ctermfg=172 guibg=#eeeeee guifg=#d78700
  hi DiagnosticFloatingHint ctermbg=74 ctermfg=255 guibg=#5fafd7 guifg=#eeeeee

  if has('nvim')
    let g:terminal_color_0 = '#626262'
    let g:terminal_color_1 = '#d78700'
    let g:terminal_color_2 = '#00af5f'
    let g:terminal_color_3 = '#d7af00'
    let g:terminal_color_4 = '#005fd7'
    let g:terminal_color_5 = '#8787ff'
    let g:terminal_color_6 = '#5fafd7'
    let g:terminal_color_7 = '#d0d0d0'
    let g:terminal_color_8 = '#4e4e4e'
    let g:terminal_color_9 = '#ff5f00'
    let g:terminal_color_10 = '#5fd75f'
    let g:terminal_color_11 = '#ffd75f'
    let g:terminal_color_12 = '#00afff'
    let g:terminal_color_13 = '#afafff'
    let g:terminal_color_14 = '#87ffff'
    let g:terminal_color_15 = '#eeeeee'
  else
    let g:terminal_ansi_colors = ['#626262', '#d78700', '#00af5f', '#d7af00', '#005fd7', '#8787ff', '#5fafd7', '#d0d0d0', '#4e4e4e', '#ff5f00', '#5fd75f', '#ffd75f', '#00afff', '#afafff', '#87ffff', '#eeeeee']
  endif
else
  

  if has('nvim')
    
  else
    
  endif
endif

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration Normal
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition Normal
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Normal
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor Normal
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField Normal
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator Normal
hi! link TSParameter Normal
hi! link TSParameterReference Normal
hi! link TSProperty TSField
hi! link TSPunctDelimiter Normal
hi! link TSPunctBracket Normal
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagAttribute htmlArg
hi! link TSTagDelimiter htmlTagName
hi! link TSText Normal
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable Normal
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
