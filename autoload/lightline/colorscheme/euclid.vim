let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  " if &background == 'light'
    let col_base     = ['#87ffff', '#5fafd7', 123, 74]
    let col_edge     = ['#5fafd7', '#87ffff', 74, 123]
    let col_gradient = ['#eeeeee', '#afafff', 255, 147]
    let col_nc       = ['#87ffff', '#5fafd7', 123, 74]
    let col_tabfill  = ['#87ffff', '#5fafd7', 123, 74]
    let col_normal   = ['#5fafd7', '#87ffff', 74, 123]
    let col_error    = ['#eeeeee', '#ff5f00', 255, 202]
    let col_warning  = ['#eeeeee', '#ff5f00', 255, 202]
    let col_insert   = ['#005fd7', '#eeeeee', 26, 255]
    let col_replace  = ['#eeeeee', '#d78700', 255, 172]
    let col_visual   = ['#eeeeee', '#8787ff', 255, 105]
    let col_tabsel   = ['#5fafd7', '#eeeeee', 74, 255]
  " else
  "   let col_base     = 
  "   let col_edge     = 
  "   let col_gradient = 
  "   let col_nc       = 
  "   let col_tabfill  = 
  "   let col_normal   = 
  "   let col_error    = 
  "   let col_warning  = 
  "   let col_insert   = 
  "   let col_replace  = 
  "   let col_visual   = 
  "   let col_tabsel   = 
  " endif

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#euclid#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
