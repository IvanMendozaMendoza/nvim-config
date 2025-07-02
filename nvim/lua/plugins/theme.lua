
  return {{
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
}
}
