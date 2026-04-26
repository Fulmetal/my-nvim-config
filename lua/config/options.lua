vim.cmd.colorscheme("catppuccin")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true
})
