-- Neovim editor settings.

---- Editor
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

---- Files
vim.opt.fileencoding = "utf-8"

---- Search
vim.opt.ignorecase = true

---- Workbench
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = "a:ver10-blinkon500"
vim.opt.display = "lastline"
vim.opt.laststatus = 2
vim.opt.list = true
vim.opt.listchars:append({
    eol = "↲",
    extends = "»",
    nbsp = "%",
    precedes = "«",
    space = "·",
    tab = "»-"
})
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.textwidth = 80
vim.opt.virtualedit = "onemore"
vim.opt.wrap = true
