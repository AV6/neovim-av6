--[[ local colorscheme = "terafox" ]]
local colorscheme = "gruvbox-material"
vim.opt.background = "light"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
