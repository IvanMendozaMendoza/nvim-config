return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					require("none-ls.code_actions.eslint"),
					require("none-ls.formatting.jq"),
				},
			})
		end,
	},
}
