local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.register({
  c = {"<cmd>Bdelete!<CR>", "Close Buffer"},
  d = {
    name = "DAP",
    b = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>","Toggle BreakPoint"},
    c = {"<cmd>lua require'dap'.continue()<cr>","Continue"},
    i = {"<cmd>lua require'dap'.step_into()<cr>","Step Into"},
    o = {"<cmd>lua require'dap'.step_over()<cr>","Step Over"},
    O = {"<cmd>lua require'dap'.step_out()<cr>","Step Out"},
    r = {"<cmd>lua require'dap'.repl.toggle()<cr>","Repl Toggle"},
    l = {"<cmd>lua require'dap'.run_last()<cr>","Run Last"},
    u = {"<cmd>lua require'dapui'.toggle()<cr>","Toggle DapUI"},
    t = {"<cmd>lua require'dap'.terminate()<cr>","Dap Terminate"},
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
    g = {"<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Toggle LazyGit"},
  },
  h = {"<cmd>nohlsearch<CR>", "no hightlight"},
  l = {
    r = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
  },
  m = {
    name = "Miscelaneous",
    W = {"<cmd>wq<CR>", "Save + Quit"},
    Q = {"<cmd>q<CR>", "Quit!"},
  },
  w = {"<cmd>w<CR>", "Save"},
  q = {"<cmd>q<CR>", "Quit"},
  ["/"] = {"<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment"},
}, { prefix = "<leader>" })
