return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		config = function(_, opts)
			require("mason").setup(opts)
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					vim.diagnostic.config({
						virtual_text = true,
						signs = true,
						underline = true,
						update_in_insert = false,
						severity_sort = true,
					})
				end,
			})

			local opts = { noremap = true, silent = true }
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"gopls",
				"rust_analyzer",
				"tailwindcss",
				"eslint",
				"html",
				"astro",
				"emmet_ls",
			},
			auto_install = true,
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
					})
				end,

				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					})
				end,

				["emmet_ls"] = function()
					require("lspconfig").emmet_ls.setup({
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						filetypes = {
							"html",
							"css",
							"javascript",
							"typescript",
							"javascriptreact",
							"typescriptreact",
							"astro",
						},
						cmd = { "emmet-ls", "--stdio" },
					})
				end,
			},
		},
	},
}
