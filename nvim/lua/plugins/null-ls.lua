return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua formatting
        null_ls.builtins.formatting.stylua,

        -- JavaScript/TypeScript/JSON/YAML formatting
        null_ls.builtins.formatting.prettier.with({
          extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
          filetypes = {
            "javascript", "typescript", "javascriptreact", "typescriptreact",
            "css", "scss", "html", "json", "yaml", "yml", "markdown"
          },
        }),

        -- YAML specific formatting (alternative to prettier)
        -- null_ls.builtins.formatting.yamlfmt, -- Uncomment if you prefer yamlfmt over prettier

        -- SQL formatting
        null_ls.builtins.formatting.sqlfluff.with({
          command = "/home/ivan/.local/bin/sqlfluff",
          extra_args = { "--dialect", "postgres" }, -- Change to your SQL dialect: postgres, mysql, sqlite, etc.
        }),
        -- Alternative SQL formatters:
        -- null_ls.builtins.formatting.sql_formatter,
        -- null_ls.builtins.formatting.sqlfmt,

        -- Diagnostics
        null_ls.builtins.diagnostics.eslint,
      },
    })

    vim.keymap.set("n", "<leader>gr", function()
      vim.lsp.buf.format({
        async = false, -- ensure formatting finishes before saving
      })
      vim.cmd("write") -- or :w to save the file
    end, { desc = "Format and save buffer" })
  end,
}
