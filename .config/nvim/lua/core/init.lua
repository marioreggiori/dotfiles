require("core.packer")
require("core.remap")

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

local opt = vim.opt

opt.tabstop = 2 
opt.shiftwidth = 2 
opt.expandtab = true 
opt.autoindent = true
opt.ignorecase = true 
opt.smartcase = true 
opt.cursorline = true

require("nvim-tree").setup()
require("lualine").setup()


