return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    keys = {
      { "-", "<CMD>Oil<CR>", desc = "Explorer Oil (parent directory)" },
    },
    opts = {
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
}
