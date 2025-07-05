return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-context",
    },
    opts = {
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
      context_commentstring = {
        enable = true,
      },
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
      -- Setup Treesitter core
      require("nvim-treesitter.configs").setup(opts)

      -- Setup Treesitter Context (must be manually initialized)
      require("treesitter-context").setup({
        enable = true,    -- Enable the plugin
        max_lines = 0,    -- Unlimited context lines
        trim_scope = "outer", -- How to trim when context gets long
        mode = "cursor",  -- "cursor" or "topline"
        patterns = {
          -- Define which nodes show in the context
          default = {
            "class",
            "function",
            "method",
          },
        },
        zindex = 20,
        separator = nil, -- You can set a separator line if you want
      })

      vim.cmd([[highlight TreesitterContext guibg=NONE]])
    end,
  },
}
