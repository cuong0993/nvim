return {
  {
    "folke/neoconf.nvim",
    opts = {
      local_settings = ".neoconf.json",
      global_settings = "neoconf.json",
      live_reload = true,
      filetype_jsonc = true,
      plugins = {
        lspconfig = {
          enabled = true,
        },
        jsonls = {
          enabled = true,
          configured_servers_only = false,
        },
        lua_ls = {
          enabled_for_neovim_config = true,
          enabled = true,
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "gt", vim.lsp.buf.type_definition, desc = "Goto Type Definition" },
    },
    opts = {
      servers = {
        harper_ls = {
          settings = {
            ["harper-ls"] = {
              linters = {
                spell_check = true,
                spelled_numbers = false,
                an_a = true,
                sentence_capitalization = true,
                unclosed_quotes = true,
                wrong_quotes = false,
                long_sentences = true,
                repeated_words = true,
                spaces = true,
                matcher = true,
              },
            },
          },
        },
        lemminx = {},
        bashls = {},
      },
      inlay_hints = { enabled = false },
      diagnostics = {
        float = { border = vim.g.border },
        virtual_text = false,
      },
      format = {
        timeout_ms = 5000,
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = { border = vim.g.border, width = 0.8, height = 0.8 },
    },
  },
}
