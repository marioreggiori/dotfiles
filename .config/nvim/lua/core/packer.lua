vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', 
    },
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({
    'projekt0n/github-nvim-theme', tag = 'v0.0.7',
    config = function()
      require("github-theme").setup({
        theme_style = "dark_default",
      })

    end
  })
  use('tpope/vim-commentary')
  use('fatih/vim-go', {run = ':GoUpdateBinaries'})
  use('rust-lang/rust.vim')
  use('dart-lang/dart-vim-plugin')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'jiangmiao/auto-pairs'

end)

