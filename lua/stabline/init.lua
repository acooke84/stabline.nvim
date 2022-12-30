local M = {}

local config = require("stabline.config")

M.statusline = function()
  return require("stabline.statusline").run(config.statusline)
end

M.tabline = function()
  return require("stabline.statusline").run(config.statusline)
end

M.setup = function()
  vim.opt.statusline = "%!v:lua.require('stabline').statusline()"
end

return M
