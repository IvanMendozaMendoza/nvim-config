return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
        }),
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
