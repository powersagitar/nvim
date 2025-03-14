return {
  "aurum77/live-server.nvim",
  event = "VeryLazy",
  config = function()
    require("plugins.live-server")
  end,
  cmd = {
    "LiveServer",
    "LiveServerStart",
    "LiveServerStop",
    "LiveServerInstall",
  },
  build = function()
    require("live_server.util").install()
  end,
}
