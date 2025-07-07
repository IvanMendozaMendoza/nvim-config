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

-- Neotree
keymap("n", "<C-n>", ":Neotree toggle<CR>", opts)

-- Clear search
keymap("n", "<Esc>", ":nohlsearch<CR>", opts)

-----------------------
---- -- barbar -- -----
-----------------------
-- Move to previous/next buffer
keymap("n", "<Tab>", ":BufferNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferPrevious<CR>", opts)

-- Re-order buffers
keymap("n", "<leader><", ":BufferMovePrevious<CR>", opts)
keymap("n", "<leader>>", ":BufferMoveNext<CR>", opts)

-- Pin/unpin buffer
keymap("n", "<leader>bp", ":BufferPin<CR>", opts)

-- Close buffer
keymap("n", "<leader>bc", ":BufferClose<CR>", opts)
keymap("n", "<leader>bo", ":BufferCloseAllButCurrent<CR>", opts)
keymap("n", "<leader>bl", ":BufferCloseBuffersLeft<CR>", opts)
keymap("n", "<leader>br", ":BufferCloseBuffersRight<CR>", opts)

-- Magic buffer-picking mode (like Telescope for buffers)
keymap("n", "<leader>bb", ":BufferPick<CR>", opts)

-- Jump to buffer [1-9]
for i = 1, 9 do
	keymap("n", "<leader>" .. i, ":BufferGoto " .. i .. "<CR>", opts)
end

-- ----------------------
-- Generate documentation
-- ----------------------
keymap("n", "<Leader>'", ":lua require('neogen').generate()<CR>", opts)

-- Treesj toggle
keymap("n", "<leader>m", require("treesj").toggle)

-- LSP helpers
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)

-- Copilot keymaps
-- Your keybindings wrapped in the keymap function
keymap("n", "<leader>zc", ":CopilotChat<CR>", { desc = "Chat with Copilot" })
keymap("v", "<leader>ze", ":CopilotChatExplain<CR>", { desc = "Explain Code" })
keymap("v", "<leader>zr", ":CopilotChatReview<CR>", { desc = "Review Code" })
keymap("v", "<leader>zf", ":CopilotChatFix<CR>", { desc = "Fix Code Issues" })
keymap("v", "<leader>zo", ":CopilotChatOptimize<CR>", { desc = "Optimize Code" })
keymap("v", "<leader>zd", ":CopilotChatDocs<CR>", { desc = "Generate Docs" })
keymap("v", "<leader>zt", ":CopilotChatTests<CR>", { desc = "Generate Tests" })
keymap("n", "<leader>zm", ":CopilotChatCommit<CR>", { desc = "Generate Commit Message" })
keymap("v", "<leader>zs", ":CopilotChatCommit<CR>", { desc = "Generate Commit for Selection" })
vim.keymap.set("v", "<leader>zn", function()
	require("CopilotChat").ask("Rename")
end, { desc = "Copilot Chat: Rename Variable" })
