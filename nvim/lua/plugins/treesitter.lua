-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
      -- Enable highlighting, indentation, etc.
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
      -- List of languages to ensure parsers are installed for
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "go",
        "java",
        "python",
        "rust",
      },
      sync_install = false,
      auto_install = true,
      additional_vim_regex_highlighting = false,
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
