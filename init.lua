-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- load vimrc
-- it is IMPORTANT to load vimrc after LazyVim in case to override settings if conflicts
vim.cmd.source(vim.fn.stdpath("config") .. "/vimrc.vim")
