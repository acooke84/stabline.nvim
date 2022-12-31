local M = {}

local config = require("stabline.config")

M.load_highlight = function(hl_group)
  for hl, col in pairs(hl_group) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

M.statusline = function()
  return require("stabline.statusline").run(config.statusline)
end

M.tabline = function()
  return require("stabline.tabline").run(config.tabline)
end

M.setup = function()
  statusline_hl = require("stabline.statusline.highlights")
  M.load_highlight(statusline_hl)

  vim.opt.statusline = "%!v:lua.require('stabline').statusline()"
end

return M
