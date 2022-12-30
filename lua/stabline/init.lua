local M = {}

local config = require("stabline.config")

M.statusline = function()
  require("stabline.statusline").run(config.statusline)
end

M.tabline = function()
  require("stabline.statusline").run(config.statusline)
end

M.setup = function()
  vim.opt.statusline = "%!v:helloworld"
end

return M
