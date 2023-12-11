--[[ local colorscheme = "terafox" ]]

-- only for monokai
local monokai_status_ok, monokai = pcall(require, "monokai-pro")
if not monokai_status_ok then
	return
end

monokai.setup({
    filter="pro"
})


vim.opt.background = "dark"
local colorscheme = "catppuccin"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
