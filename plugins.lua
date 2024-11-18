local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    }
  },
  {
    "mfussenegger/nvim-dap",
    config = function (_, _)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft={"python"},
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "jedi-language-server",
        -- "python-lsp-server",
        "black",
        -- "debugpy",
        -- "mypy",
        "ruff",
        "lua_ls",
        -- "pyright"
      }
    }
  },
  {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
},
  {"simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    opts = {autofold_depth=0},
    config = function (_, opts)
      require("symbols-outline").setup(opts)
      require("core.utils").load_mappings("symbols")
    end
  },
{
    "robitx/gp.nvim",
    lazy=false,
    config = function()
        local conf = {
          openai_api_key = os.getenv("OPENAI_API_KEY")
        }
        require("gp").setup(conf)

        -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
    end,
},
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  {
    "princejoogie/dir-telescope.nvim",
    event="VeryLazy",
    dependencies = {"nvim-telescope/telescope.nvim"},
    config = function()
      require("dir-telescope").setup({
        hidden = true,
        no_ignore = false,
        show_preview = true,
      })
      require("telescope").load_extension("dir")
      require("core.utils").load_mappings("dir_telescope")
    end,
  },
  {
      "iamcco/markdown-preview.nvim",
      event="VeryLazy",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function() vim.fn["mkdp#util#install"]() end,
  }
}
return plugins
