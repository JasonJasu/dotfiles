-- local status, vimtex = pcall(require, "vimtex")
-- if (not status) then return end

--  VimTeX uses latexmk as the default compiler backend. If you use it, which is
--  strongly recommended, you probably don't need to configure anything. If you
--  want another compiler backend, you can change it as follows. The list of
--  supported backends and further explanation is provided in the documentation,
--  see ":help vimtex-compiler".
--  vimtex_compiler_method

vim.cmd [[
  filetype plugin indent on
  syntax enable
  let g:vimtex_view_method = 'zathura'
  let g:vimtex_view_general_viewer = 'okular'
  let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
  let g:vimtex_compiler_method = 'latexrun'
]]


