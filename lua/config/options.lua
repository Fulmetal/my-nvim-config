vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin-mocha"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.clipboard = "unnamedplus"

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"
vim.opt.ignorecase = true


vim.opt.scrolloff = 8


vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true
})
