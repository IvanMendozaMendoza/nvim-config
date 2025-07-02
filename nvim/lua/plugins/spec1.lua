-- ~/.config/nvim/lua/plugins/spec1.lua
-- This file should return a table containing your plugin specifications.

return {
  -- Example: nvim-lua/plenary.nvim (a common utility plugin)
  {
    'nvim-lua/plenary.nvim',
    -- You can add optional configurations here if needed,
    -- but for plenary, usually none are required immediately.
  },
  {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    theme = "wave", -- or "dragon", "thallassa" (some variations might exist)
    background = {
      dark = "wave",
      light = "default"
    },
    transparent = true, -- Set to true for transparent background
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd.colorscheme("kanagawa")
  end,
},

  -- Add other plugin specs here in a similar format:
  -- { 'another/plugin-repo', config = function() require('another-plugin').setup() end },
}
