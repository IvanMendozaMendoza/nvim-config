-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- This command ensures parsers are installed/updated on plugin install/update
    event = { 'BufReadPost', 'BufNewFile' }, -- Lazy load for performance
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects', -- For advanced text objects (optional but common)
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
          -- You can configure keymaps for text objects here
          lookahead = true, -- Lookahead for textobjects
          keymaps = {
            -- For example: `va` for around, `vi` for inside
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            -- More text object keymaps can be found in :help nvim-treesitter-textobjects
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
        "rust", -- Add rust here!
        -- Add any other languages you commonly use
      },
      -- Install parsers synchronously (recommended for initial setup)
      sync_install = false,
      -- Automatically install missing parsers when opening a buffer
      auto_install = true,
      -- Disable specific modules for specific languages if needed
      -- disable = { "c", "rust" }, -- Example: disable for C and Rust
      -- Additional vim regex highlighting (usually not needed with treesitter)
      additional_vim_regex_highlighting = false,
    },
    config = function(_, opts)
      -- Setup nvim-treesitter
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
