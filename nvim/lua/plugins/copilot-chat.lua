-- Set up with :Copilot setup command... see more https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
  },
}
