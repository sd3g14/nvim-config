return {
  "robitx/gp.nvim",
  lazy = false,
  keys = {
    { "<leader>cqa", "<cmd>GpAppend<CR>", "Append (after)" },
    { "<leader>cqb", "<cmd>GpPrepend<CR>", "Prepend (before)" },
    { "<leader>cqc", "<cmd>GpChatNew<CR>", "New Chat" },
    { "<leader>cqf", "<cmd>GpChatFinder<CR>", "Chat Finder" },
  },
  config = function()
    local conf = {
      openai_api_key = os.getenv("OPENAI_API_KEY"),
    }
    require("gp").setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
