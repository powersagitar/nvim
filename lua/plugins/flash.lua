return {
  "folke/flash.nvim",
  event = "VeryLazy",
  keys = {
    -- disable the default flash keymap
    { "s", mode = { "n", "x", "o" }, false },
    { "S", mode = { "n", "x", "o" }, false },
  },
}
