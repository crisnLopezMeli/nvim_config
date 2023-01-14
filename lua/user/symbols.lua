local status_ok, symbols = pcall(require, "symbols-outline")
if not status_ok then
  return error("error calling symbols-outline")
end

symbols.setup()
