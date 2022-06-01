function! euclid#palette#light#create() abort
  " gui {{{
  let g = {}

  " palette
  let g.black  = pgmnt#color#rgb( 98,  98,  98)
  let g.red    = pgmnt#color#rgb(215, 135,   0)
  let g.orange = pgmnt#color#rgb(215, 135,   0)
  let g.green  = pgmnt#color#rgb(  0, 175,  95)
  let g.yellow = pgmnt#color#rgb(215, 175,   0)
  let g.blue   = pgmnt#color#rgb(  0,  95, 215)
  let g.purple = pgmnt#color#rgb(135, 135, 255)
  let g.cyan   = pgmnt#color#rgb( 95, 175, 215)
  let g.white  = pgmnt#color#rgb(208, 208, 208)

  let g.lblack  = pgmnt#color#rgb( 78,  78,  78)
  let g.lred    = pgmnt#color#rgb(255,  95,   0)
  let g.lgreen  = pgmnt#color#rgb( 95, 215,  95)
  let g.lyellow = pgmnt#color#rgb(255, 215,  95)
  let g.lblue   = pgmnt#color#rgb(  0, 175, 255)
  let g.lpurple = pgmnt#color#rgb(175, 175, 255)
  let g.lcyan   = pgmnt#color#rgb(135, 255, 255)
  let g.lwhite  = pgmnt#color#rgb(238, 238, 238)

  " normal
  let g.normal_bg = g.lwhite
  let g.normal_fg = g.black

  " linenr
  let g.linenr_bg = g.lwhite
  let g.linenr_fg = g.red
  let g.cursorlinenr_bg = g.linenr_bg
  let g.cursorlinenr_fg = g.linenr_fg

  " diff
  let g.difftext_bg = g.lcyan
  let g.difftext_fg = g.white

  " statusline
  let g.statusline_bg = g.lcyan
  let g.statusline_fg = g.cyan
  let g.statuslinenc_bg = g.statusline_fg
  let g.statuslinenc_fg = g.statusline_bg

  " pmenu
  let g.pmenu_bg = g.cyan
  let g.pmenu_fg = g.normal_bg
  let g.pmenusel_bg = g.lcyan
  let g.pmenusel_fg = g.normal_fg

  " misc
  let g.comment_fg = g.white
  let g.cursorline_bg = g.linenr_bg
  let g.folded_bg = g.cyan
  let g.folded_fg = g.lwhite
  let g.matchparen_bg = g.lblack
  let g.matchparen_fg = g.white
  let g.search_bg = g.lcyan
  let g.search_fg = g.normal_fg
  let g.specialkey_fg = g.white
  let g.tablinesel_bg = g.normal_bg
  let g.tablinesel_fg = g.normal_fg
  let g.todo_bg = g.red
  let g.todo_fg = g.normal_bg
  let g.visual_bg = g.lcyan
  let g.whitespace_fg = g.white
  let g.wildmenu_bg = g.lwhite
  let g.wildmenu_fg = g.statusline_fg

  " ansi colors
  let g.term_colors = [
        \   g.black,
        \   g.red,
        \   g.green,
        \   g.yellow,
        \   g.blue,
        \   g.purple,
        \   g.cyan,
        \   g.white,
        \   g.lblack,
        \   g.lred,
        \   g.lgreen,
        \   g.lyellow,
        \   g.lblue,
        \   g.lpurple,
        \   g.lcyan,
        \   g.lwhite,
        \ ]

  " airline/lightline
  let g.xline_base_bg = g.statuslinenc_bg
  let g.xline_base_fg = g.statuslinenc_fg
  let g.xline_edge_bg = g.statusline_bg
  let g.xline_edge_fg = g.statusline_fg
  let g.xline_gradient_bg = g.lpurple
  let g.xline_gradient_fg = g.lwhite
  let g.xline_tabsel_bg = g.lwhite
  let g.xline_tabsel_fg = g.statusline_fg

  " plugins
  let g.easymotion_shade_fg = g.cyan
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.black  = 241
  let c.red    = 172
  let c.orange = 172
  let c.green  = 35
  let c.yellow = 178
  let c.blue   = 26
  let c.purple = 105
  let c.cyan   = 74
  let c.white  = 252

  let c.lblack  = 239
  let c.lred    = 202
  let c.lgreen  = 77
  let c.lyellow = 221
  let c.lblue   = 39
  let c.lpurple = 147
  let c.lcyan   = 123
  let c.lwhite  = 255

  let c.normal_bg = c.lwhite
  let c.normal_fg = c.black

  " linenr
  let c.linenr_bg = c.normal_bg
  let c.linenr_fg = c.red
  let c.cursorlinenr_bg = c.linenr_bg
  let c.cursorlinenr_fg = c.linenr_fg

  " diff
  let c.difftext_bg = c.lcyan
  let c.difftext_fg = c.white

  " statusline
  let c.statusline_bg = c.lcyan
  let c.statusline_fg = c.cyan
  let c.statuslinenc_bg = c.statusline_fg
  let c.statuslinenc_fg = c.statusline_bg

  " pmenu
  let c.pmenu_bg = c.cyan
  let c.pmenu_fg = c.normal_bg
  let c.pmenusel_bg = c.lcyan
  let c.pmenusel_fg = c.normal_fg

  " misc
  let c.comment_fg = c.lblack
  let c.cursorline_bg = c.linenr_bg
  let c.folded_bg = c.linenr_bg
  let c.folded_fg = c.lwhite
  let c.matchparen_bg = c.lblack
  let c.matchparen_fg = c.white
  let c.search_bg = c.lcyan
  let c.search_fg = c.normal_bg
  let c.specialkey_fg = c.white
  let c.todo_bg = c.red
  let c.todo_fg = c.normal_bg
  let c.visual_bg = c.lcyan
  let c.whitespace_fg = c.white
  let c.wildmenu_bg = c.white
  let c.wildmenu_fg = c.statusline_fg

  " airline/lightline
  let c.xline_base_bg = c.statuslinenc_bg
  let c.xline_base_fg = c.statuslinenc_fg
  let c.xline_edge_bg = c.statusline_bg
  let c.xline_edge_fg = c.statusline_fg
  let c.xline_gradient_bg = c.lpurple
  let c.xline_gradient_fg = c.lwhite
  let c.xline_tabsel_bg = c.lwhite
  let c.xline_tabsel_fg = c.statusline_fg

  " plugins
  let c.easymotion_shade_fg = c.cyan

  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
