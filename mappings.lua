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

M.dir_telescope = {
  plugin = true,
  n = {
    ["<leader>fdw"] = {"<cmd>Telescope dir live_grep<CR>", "Live grep in directory"},
    ["<leader>fdf"] = {"<cmd>Telescope dir find_files<CR>", "Live find files in directory"},
  }
}

M.gp = {
  n = {
    ["<leader>gpa"] = {"<cmd>GpAppend<CR>", "Append (after)" },
    ["<leader>gpb"] = {"<cmd>GpPrepend<CR>","Prepend (before)" },
    ["<leader>gpc"] = {"<cmd>GpChatNew<CR>", "New Chat" },
    ["<leader>gpf"] = {"<cmd>GpChatFinder<CR>", "Chat Finder" },
  }
}

return M
