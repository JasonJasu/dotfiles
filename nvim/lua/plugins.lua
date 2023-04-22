local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed.')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- load packer.nvim

  -- Theme
  use {
    'svrana/neosolarized.nvim', -- neosolarized theme
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' -- lspconfig
  use 'nvim-lua/plenary.nvim' -- Common library
  use 'onsails/lspkind-nvim' -- pictograms
  use 'glepnir/lspsaga.nvim' -- Nvim UI
  use 'nvim-tree/nvim-web-devicons' -- devicons
  use 'andweeb/presence.nvim' -- discord rich presence

  use 'norcalli/nvim-colorizer.lua' -- color highlighter

  use 'folke/zen-mode.nvim' -- Zen-mode

  -- Auto-completion plugins
  use 'L3MON4D3/LuaSnip' -- Snippet Engine
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- cmp source for built-in LSP
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- nvim's Tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- autotag and autopairs
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'


end)
