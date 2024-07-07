return {
  {
    "LazyVim/LazyVim",
    dependencies = { "lunacookies/vim-colors-xcode" },
    opts = {
      colorscheme = "xcode",
    },
  },

  -- auto dark mode switcher
  -- {
  --   "f-person/auto-dark-mode.nvim",
  --   opts = {
  --     set_light_mode = function()
  --       vim.cmd("colorscheme github_light_default")
  --     end,
  --     set_dark_mode = function()
  --       vim.cmd("colorscheme github_dark_default")
  --     end,
  --   },
  -- },
}
