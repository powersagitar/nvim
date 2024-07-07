-- Spawn a new Ghostty window in Neovim's cwd without leaking Neovim's environment.
-- Neovim exports these to every child process; inherited by a fresh terminal they
-- break plain vim ($VIM/$VIMRUNTIME/$MYVIMRC) and make tools think they're inside
-- this Neovim's :terminal ($NVIM points at this instance's, possibly dead, socket).
local M = {}

local unset = { "VIM", "VIMRUNTIME", "MYVIMRC", "NVIM", "NVIM_LOG_FILE" }

function M.spawn()
  local cmd = { "env" }
  for _, var in ipairs(unset) do
    vim.list_extend(cmd, { "-u", var })
  end

  local cwd = "--working-directory=" .. vim.fn.getcwd()
  if vim.fn.has("mac") == 1 then
    vim.list_extend(cmd, { "open", "-na", "Ghostty", "--args", cwd })
  else
    vim.list_extend(cmd, { "ghostty", cwd })
  end

  vim.fn.jobstart(cmd, { detach = true })
end

return M
