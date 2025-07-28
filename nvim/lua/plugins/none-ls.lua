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
          -- Code actions and diagnostics
          require("none-ls.code_actions.eslint"),
          require("none-ls.diagnostics.eslint"),

          -- JSON formatting (you already have this)
          require("none-ls.formatting.jq"),

          -- Lua formatting
          null_ls.builtins.formatting.stylua,

          -- JavaScript/TypeScript/CSS/HTML/JSON/YAML formatting
          null_ls.builtins.formatting.prettier.with({
            extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
            filetypes = {
              "javascript", "typescript", "javascriptreact", "typescriptreact",
              "css", "scss", "html", "json", "yaml", "yml", "markdown"
            },
          }),

          null_ls.builtins.formatting.sqlfluff.with({
            extra_args = { "--dialect", "postgres" },
          }),

          null_ls.builtins.formatting.yamlfmt,
        },
      })

      -- Format and save keybinding
      vim.keymap.set("n", "<leader>gr", function()
        vim.lsp.buf.format({
          async = false, -- ensure formatting finishes before saving
        })
        vim.cmd("write") -- save the file
      end, { desc = "Format and save buffer" })
    end,
  },
}
