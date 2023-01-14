local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.register({
  ["<leader>"] = {
    c = { "<cmd>Bdelete!<cr>", "Close Buffer" },
    d = {
      name = "DAP",
      b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle BreakPoint" },
      c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
      i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
      o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
      O = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
      r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl Toggle" },
      l = { "<cmd>lua require'dap'.run_last()<cr>", "Run Last" },
      u = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle DapUI" },
      t = { "<cmd>lua require'dap'.terminate()<cr>", "Dap Terminate" },
    },
    e = { ":NvimTreeToggle<cr>", "NvimTree" },
    f = {
      name = "Telescope",
      f = { ":Telescope find_files<cr>", "Find files" },
      w = { ":Telescope live_grep<cr>", "Find words" },
      p = { ":Telescope projects<cr>", "Find projects" },
      b = { ":Telescope buffers<cr>", "Find buffer" },
    },
    g = {
      name = "Git",
      b = { "<cmd>Gitsigns blame_line<cr>", "Current blame line" },
      g = { "<cmd>lua _LAZYGIT_TOGGLE()<cr>", "Toggle LazyGit" },
      t = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle current line blame" }
    },
    h = { "<cmd>nohlsearch<cr>", "no hightlight" },
    l = {
      name = "LSP",
      a = { "<cmd> lua vim.lsp.buf.code_action<cr>", "LSP code action" },
      d = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Hover diagnostics" },
      D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration of current symbol" },
      f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format code" },
      ["gD"] = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation of current symbol" },
      ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Show the definition of current symbol" },
      ["gr"] = { "<cmd>lua vim.lsp.buf.references()<cr>", "References of current symbol" },
      h = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature help" },
      i = { "<cmd>LspInfo<cr>", "LSP Info" },
      I = { "<cmd>LspInstallInfo<cr>", "LSP Install Info" },
      j = { "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", "Next diagnostic" },
      k = { "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", "Prev diagnostic" },
      K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover symbol details" },
      l = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Diagnostic list" }, -- default <leader>
      r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename current simbol" },
    },
    W = { "<cmd>wq<cr>", "Save + Quit" },
    Q = { "<cmd>q!<cr>", "Quit!" },
    s = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline" },
    t = { "<cmd>GoTestPackageOnSave<cr> <cmd>w<cr>", "Go Test package" },
    w = { "<cmd>w<cr>", "Save" },
    q = { "<cmd>q<cr>", "Quit" },
    ["/"] = { "<cmd>lua require('Comment.api').toggle.linewise()<cr>", "Comment" },
  },
})
