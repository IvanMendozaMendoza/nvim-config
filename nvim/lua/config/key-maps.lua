local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--Navigation
keymap("n", "n", "nzzzv")
-- window
keymap("n", "<C-o>", "<C-w>p", opts) -- Toggle windows
keymap("n", "<C-h>", "<C-w>h", opts) -- left
keymap("n", "<C-j>", "<C-w>j", opts) -- down
keymap("n", "<C-k>", "<C-w>k", opts) -- up
keymap("n", "<C-l>", "<C-w>l", opts) -- right

-- terminal window
keymap("t", "<Esc>", [[<C-\><C-n>]], opts)

-- Terminal mode shortcuts
keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]])

-- Quit and Save
keymap("n", "<leader>w", ":wa<CR>", opts)
keymap("n", "<leader>qq", ":qa!<CR>", opts)

-- Buffers (S = shift)
keymap("n", "<leader>c", ":bd!<CR>", opts)
keymap("n", "<leader>vn", ":vnew<CR>", opts) -- new vertical buffer

-- Neotree
keymap("n", "<C-n>", ":Neotree toggle<CR>", opts)

-- Clear search
keymap("n", "<Esc>", ":nohlsearch<CR>", opts)

-----------------------
---- -- barbar -- -----
-----------------------
-- Move to previous/next buffer
keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)

-- Re-order buffers
keymap("n", "<leader><", "<Cmd>BufferMovePrevious<CR>", opts)
keymap("n", "<leader>>", "<Cmd>BufferMoveNext<CR>", opts)

-- Pin/unpin buffer
keymap("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
keymap("n", "<leader>bc", "<Cmd>BufferClose<CR>", opts)
keymap("n", "<leader>bo", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
keymap("n", "<leader>bl", "<Cmd>BufferCloseBuffersLeft<CR>", opts)
keymap("n", "<leader>br", "<Cmd>BufferCloseBuffersRight<CR>", opts)

-- Magic buffer-picking mode (like Telescope for buffers)
keymap("n", "<leader>bb", "<Cmd>BufferPick<CR>", opts)

-- Jump to buffer [1-9]
for i = 1, 9 do
  keymap("n", "<leader>" .. i, "<Cmd>BufferGoto " .. i .. "<CR>", opts)
end

-- ----------------------
-- Generate documentation
-- ----------------------
keymap("n", "<Leader>'", ":lua require('neogen').generate()<CR>", opts)

-- Treesj toggle
keymap('n', '<leader>m', require('treesj').toggle)

