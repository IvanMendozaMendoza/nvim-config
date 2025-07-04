return {
  "numToStr/Comment.nvim",
  opts = {
    -- add any options here
  },
  config = function()
    require("Comment").setup()
  end,
  --  | Mode   | Keybinding    | Action              |
  --  | ------ | ------------- | ------------------- |
  --  | Normal | `gcc`         | Toggle comment line |
  --  | Visual | `gc` + motion | Toggle selection    |
}
