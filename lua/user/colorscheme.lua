--[[ local colorscheme = "terafox" ]]
vim.opt.background = "light"
local colorscheme = "dayfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
