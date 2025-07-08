return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"),
      },
    })
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.format, {})
  end,
}

