return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy", -- Load it once Neovim is mostly ready
	config = function()
		require("neoscroll").setup({
			-- Default configuration options (these are just examples):
			hide_cursor = true, -- Hide cursor while scrolling
			stop_eof = true, -- Stop scrolling at EndOfFile
			respect_scrolloff = false, -- If true, will not scroll if cursor within 'scrolloff'
			-- (Set to false if you want it to always center/scroll smoothly)

			-- Define which keys trigger smooth scrolling:
			-- You can add or remove keys here based on your preferences.
			-- These are default Vim/Neovim scrolling commands.
			mappings = {
				"<C-u>",
				"<C-d>",
				"<C-b>",
				"<C-f>",
				"zt",
				"zz",
				"zb",
			},

			-- Custom mappings can also be defined. For example:
			-- { 'zt', 'zz', 'zb' }, -- Center/top/bottom screen
			-- { 'G', 'gg', '%' },   -- Jump to start/end of file, or matching bracket

			-- Animation speed and style:
			-- You can experiment with these values.
			performance_mode = false, -- Set to true for lower CPU usage (less smooth)
			scroll_down_easing = "quadratic", -- Easing function for scrolling down
			scroll_up_easing = "quadratic", -- Easing function for scrolling up
			scroll_down_velocity_factor = 1, -- Adjust speed
			scroll_up_velocity_factor = 1, -- Adjust speed
		})

		-- Optional: If you use <C-y> and <C-e> for line-by-line scrolling,
		-- you can map them to neoscroll's functions for smoothness:
		-- vim.keymap.set('n', '<C-y>', function() require('neoscroll').scroll(-vim.wo.scroll) end, { silent = true })
		-- vim.keymap.set('n', '<C-e>', function() require('neoscroll').scroll(vim.wo.scroll) end, { silent = true })
	end,
}
