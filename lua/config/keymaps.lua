-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.neovide then
  local modes = { "n", "v", "i", "t", "c" }
  vim.keymap.set(modes, "<D-n>", function()
    require("config.ghostty").spawn()
  end, { desc = "Open new Ghostty window" })
end
