return {
  "robitx/gp.nvim",
  lazy = false,
  keys = {
    { "<leader>cqa", "<cmd>GpAppend<CR>", desc = "Append (after)" },
    { "<leader>cqb", "<cmd>GpPrepend<CR>", desc = "Prepend (before)" },
    { "<leader>cqc", "<cmd>GpChatNew<CR>", desc = "New Chat" },
    { "<leader>cqf", "<cmd>GpChatFinder<CR>", desc = "Chat Finder" },
  },
  config = function()
    local conf = {
      openai_api_key = os.getenv("OPENAI_API_KEY"),
    }
    require("gp").setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
