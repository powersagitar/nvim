return {
  "stevearc/overseer.nvim",
  opts = {},
  keys = {
    {
      mode = { "n", "v" },
      "<leader>rr",
      "<cmd>OverseerOpen<cr>" .. "<cmd>OverseerRun<cr>",
      desc = "OverseerRun",
      silent = true,
    },
    {
      mode = { "n", "v" },
      "<leader>rh",
      "<cmd>OverseerToggle<cr>",
      desc = "OverseerToggle",
      silent = true,
    },
  },
}
