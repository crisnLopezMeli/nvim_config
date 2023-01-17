local status_ok, symbols = pcall(require, "symbols-outline")
if not status_ok then
  return error("error calling symbols-outline")
end

local opts = {
    keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "H",
    unfold_all = "L",
    fold_reset = "R",
  },
  winblend = 1
}

symbols.setup(opts)
