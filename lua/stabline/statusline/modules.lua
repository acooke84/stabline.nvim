local fn = vim.fn
local sep_r = " "

local modes = {
  ["n"] = { "NORMAL", "Stab_NormalMode" },
  ["niI"] = { "NORMAL i", "Stab_NormalMode" },
  ["niR"] = { "NORMAL r", "Stab_NormalMode" },
  ["niV"] = { "NORMAL v", "Stab_NormalMode" },
  ["no"] = { "N-PENDING", "Stab_NormalMode" },
  ["i"] = { "INSERT", "Stab_InsertMode" },
  ["ic"] = { "INSERT (completion)", "Stab_InsertMode" },
  ["ix"] = { "INSERT completion", "Stab_InsertMode" },
  ["t"] = { "TERMINAL", "Stab_TerminalMode" },
  ["nt"] = { "NTERMINAL", "Stab_NTerminalMode" },
  ["v"] = { "VISUAL", "Stab_VisualMode" },
  ["V"] = { "V-LINE", "Stab_VisualMode" },
  ["Vs"] = { "V-LINE (Ctrl O)", "Stab_VisualMode" },
  [""] = { "V-BLOCK", "Stab_VisualMode" },
  ["R"] = { "REPLACE", "Stab_ReplaceMode" },
  ["Rv"] = { "V-REPLACE", "Stab_ReplaceMode" },
  ["s"] = { "SELECT", "Stab_SelectMode" },
  ["S"] = { "S-LINE", "Stab_SelectMode" },
  [""] = { "S-BLOCK", "Stab_SelectMode" },
  ["c"] = { "COMMAND", "Stab_CommandMode" },
  ["cv"] = { "COMMAND", "Stab_CommandMode" },
  ["ce"] = { "COMMAND", "Stab_CommandMode" },
  ["r"] = { "PROMPT", "Stab_ConfirmMode" },
  ["rm"] = { "MORE", "Stab_ConfirmMode" },
  ["r?"] = { "CONFIRM", "Stab_ConfirmMode" },
  ["!"] = { "SHELL", "Stab_TerminalMode" },
}

local M = {}

M.mode = function()
  local m = vim.api.nvim_get_mode().mode
  local current_mode = "%#" .. modes[m][2] .. "# " .. modes[m][1]

  return current_mode .. " " .. sep_r
end

M.fileInfo = function()
  local icon = "  "
  local filename = (fn.expand("%") == "" and "Empty ") or fn.expand("%:t")

  return "%#Stab_FileInfo#" .. icon .. filename .. sep_r
end

return M
