local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.register({
  c = {"<CMD>Bdelete!<CR>", "Close Buffer"},
  d = {
    name = "DAP",
    b = {"<CMD>lua require'dap'.toggle_breakpoint()<cr>","Toggle BreakPoint"},
    c = {"<CMD>lua require'dap'.continue()<cr>","Continue"},
    i = {"<CMD>lua require'dap'.step_into()<cr>","Step Into"},
    o = {"<CMD>lua require'dap'.step_over()<cr>","Step Over"},
    O = {"<CMD>lua require'dap'.step_out()<cr>","Step Out"},
    r = {"<CMD>lua require'dap'.repl.toggle()<cr>","Repl Toggle"},
    l = {"<CMD>lua require'dap'.run_last()<cr>","Run Last"},
    u = {"<CMD>lua require'dapui'.toggle()<cr>","Toggle DapUI"},
    t = {"<CMD>lua require'dap'.terminate()<cr>","Dap Terminate"},
  },
  e = {":NvimTreeToggle<CR>", "NvimTree"},
  f = {
    name = "Telescope",
    f = {":Telescope find_files<CR>", "Find files"},
    w = {":Telescope live_grep<CR>", "Find words"},
    p = {":Telescope projects<CR>", "Find projects"},
    b = {":Telescope buffers<CR>", "Find buffer"},
  },
  g = {
    name = "Git",
    g = {"<CMD>lua _LAZYGIT_TOGGLE()<CR>", "Toggle LazyGit"},
  },
  h = {"<CMD>nohlsearch<CR>", "no hightlight"},
  l = {
    name = "LSP",
    a = {"<CMD> lua vim.lsp.buf.code_action<CR>", "LSP code action"},
    f = {"<CMD> lua vim.lsp.buf.formatting_sync<CR>", "Format code"},
    h = {"<CMD> lua vim.lsp.buf.signature_help<CR>", "Signature help"},
    r = {"<CMD>lua vim.lsp.buf.rename()<CR>", "Rename current simbol"},
  },
  m = {
    name = "Miscelaneous",
    W = {"<CMD>wq<CR>", "Save + Quit"},
    Q = {"<CMD>q<CR>", "Quit!"},
  },
  w = {"<CMD>w<CR>", "Save"},
  q = {"<CMD>q<CR>", "Quit"},
  ["/"] = {"<CMD>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment"},
}, {prefix = "<leader>"})
