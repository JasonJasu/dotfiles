require('base')
require('highlights')
require('maps')
require('plugins')

-- Sync system clipboard and vimreg (windows)
vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }

-- Set language to en_US
vim.api.nvim_exec('language en_US', true)
