local M = {}

M.general = {
  n={
    ["C-h"] = {"<cmd> TmuxNaviagateLeft<CR>", "window left"},
    ["C-l"] = {"<cmd> TmuxNaviagateRight<CR>", "window right"},
    ["C-j"] = {"<cmd> TmuxNaviagateDown<CR>", "window down"},
    ["C-k"] = {"<cmd> TmuxNaviagateUp<CR>", "window up"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}


M.symbols = {
  plugin = true,
  n = {
    ["<leader>s"] = {
      "<cmd> SymbolsOutline <CR>",
      "Toggle Symbols Outline"
    },
  }

}

return M
