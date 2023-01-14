local status_ok, symbols = pcall(require, "symbols-outline")
if not status_ok then
  return error("error calling symbols-outline")
end

local opts = {
  highlight_hovered_item = false
}

symbols.setup(opts)
