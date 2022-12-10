local status_ok, plugin = pcall(require, "nvim-ts-autotag")
if not status_ok then
  return
end


plugin.setup {}

