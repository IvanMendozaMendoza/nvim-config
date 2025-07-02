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

-- Setting telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
