return {
  "robitx/gp.nvim",
  lazy = false,
  keys = {
    { "<leader>cqr", "<cmd>GpRewrite<CR>", mode = { "n" }, desc = "Rewrite in place" },
    { "<leader>cqn", "<cmd>GpNew<CR>", mode = { "n" }, desc = "Rewrite in new horizontal window" },
    { "<leader>cqa", "<cmd>GpAppend<CR>", mode = { "n" }, desc = "Append (after)" },
    { "<leader>cqb", "<cmd>GpPrepend<CR>", mode = { "n" }, desc = "Prepend (before)" },
    -- { "<leader>cqr", "<cmd>'<,'>GpRewrite<CR>", mode = { "v" }, desc = "Rewrite in place" },
    -- { "<leader>cqn", "<cmd>'<,'>GpNew<CR>", mode = { "v" }, desc = "Rewrite in new horizontal window" },
    -- { "<leader>cqa", "<cmd>'<,'>GpAppend<CR>", mode = { "v" }, desc = "Append (after)" },
    -- { "<leader>cqb", "<cmd>'<,'>GpPrepend<CR>", mode = { "v" }, desc = "Prepend (before)" },
    { "<leader>cqc", "<cmd>GpChatNew<CR>", desc = "New Chat" },
    { "<leader>cqf", "<cmd>GpChatFinder<CR>", desc = "Chat Finder" },
  },
  config = function()
    local conf = {
      openai_api_key = os.getenv("OPENAI_API_KEY"),

      providers = {
        openai = {
          disable = true,
          endpoint = "https://api.openai.com/v1/chat/completions",
          -- secret = os.getenv("OPENAI_API_KEY"),
        },
        anthropic = {
          disable = false,
          endpoint = "https://api.anthropic.com/v1/messages",
          secret = os.getenv("ANTHROPIC_API_KEY"),
        },
      },
    }
    require("gp").setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
