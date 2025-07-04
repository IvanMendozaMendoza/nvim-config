return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			{ "3rd/image.nvim", opts = {} },
		},
		lazy = false, -- neo-tree will lazily load itself
		config = function()
			vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
			vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
			vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
			vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

			require("neo-tree").setup({
				close_if_last_window = true, -- closes Neo-tree if it's the last window
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				sort_case_insensitive = true,
				default_component_configs = {
					indent = {
						with_markers = true,
						indent_size = 2,
						padding = 1,
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "󰜌",
						default = "",
					},
					modified = {
						symbol = "●",
						highlight = "NeoTreeModified",
					},
					git_status = {
						symbols = {
							added = "✚",
							modified = "",
							deleted = "✖",
							renamed = "󰁕",
							untracked = "",
							ignored = "",
							--							unstaged = "",
							staged = "",
							conflict = "",
						},
					},
				},
				window = {
					position = "left",
					width = 32,
				},
			})
		end,
		---@module "neo-tree"
		---@type neotree.Config?
	},
}
