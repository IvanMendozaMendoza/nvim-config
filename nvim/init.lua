vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Enable absolute line numbers
vim.opt.number = true

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.numberwidth = 4

-- Bootstrapping Lazy package mannager
require("config.lazy")

