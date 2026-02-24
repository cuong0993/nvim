return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      zsh = { "shfmt" },
      bash = { "shfmt" },
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      sql = { "sqlfluff" },
      html = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      toml = { "taplo" },
      xml = { "xmlformat" },
    },
    formatters = {
      oxfmt = {
        command = "oxfmt",
        args = { "$FILENAME" },
        stdin = false,
      },
    },
  },
}