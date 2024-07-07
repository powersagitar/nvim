-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- load vimrc
-- important: load vimrc after LazyVim to avoid conflicts
vim.cmd.source(vim.env.HOME .. "/.vimrc")
