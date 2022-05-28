let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  " if &background == 'light'
    let col_base     = ['#87ffff', '#5fafd7', 123, 74]
    let col_edge     = ['#5fafd7', '#87ffff', 74, 123]
    let col_error    = ['#eeeeee', '#ff5f00', 255, 202]
    let col_gradient = ['#d0d0d0', '#afafff', 252, 147]
    let col_nc       = ['#87ffff', '#5fafd7', 123, 74]
    let col_warning  = ['#eeeeee', '#ff5f00', 255, 202]
    let col_insert   = ['#005fd7', '#eeeeee', 26, 255]
    let col_replace  = ['#eeeeee', '#d78700', 255, 172]
    let col_visual   = ['#eeeeee', '#8787ff', 255, 105]
    let col_red      = ['#d78700', '#eeeeee', 172, 255]
  " else
  "   let col_base     = 
  "   let col_edge     = 
  "   let col_error    = 
  "   let col_gradient = 
  "   let col_nc       = 
  "   let col_warning  = 
  "   let col_insert   = 
  "   let col_replace  = 
  "   let col_visual   = 
  "   let col_red      = 
  " endif

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_gradient,
        \ col_base)
  let p.terminal = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  " Terminal
  let p.normal.airline_term = col_base
  let p.terminal.airline_term = col_base
  let p.visual.airline_term = col_base

  return p
endfunction


let g:airline#themes#euclid#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
