local status, vimtex = pcall(require, "vimtex")
if (not status) then return end

vimtex.setup {
  vimtex_view_method = 'zathura',
  vimtex_compiler_method = 'tectonic',
  conceallevel = 1 

}

