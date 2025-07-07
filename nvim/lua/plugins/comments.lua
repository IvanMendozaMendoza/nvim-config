return {
	{
		"numToStr/Comment.nvim",
		opts = {},
		corfig = function()
			require("Comment").setup()
		end,
		--  | Mode   | Keybinding    | Action              |
		--  | ------ | ------------- | ------------------- |
		--  | Normal | `gcc`         | Toggle comment line |
		--  | Visual | `gc` + motion | Toggle selection    |
	},
	{
		"danymat/neogen",
		config = true,
	},
}
