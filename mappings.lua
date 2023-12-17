local M = {}

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
