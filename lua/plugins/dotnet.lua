return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>cdr", "<cmd>Dotnet run<CR>", desc = "Run .NET App" },
      { "<leader>cdp", "<cmd>Dotnet run profile<CR>", desc = "Run .NET Profile (launchSettings)" },
      { "<leader>cdw", "<cmd>Dotnet watch<CR>", desc = "Watch .NET App" },
      { "<leader>cdt", "<cmd>Dotnet testrunner<CR>", desc = "Test Runner (.NET)" },
      { "<leader>cds", "<cmd>Dotnet secrets<CR>", desc = "Manage User Secrets (.NET)" },
      { "<leader>cda", "<cmd>Dotnet action<CR>", desc = "Run .NET Action" },
      { "<leader>cdo", "<cmd>Dotnet outdate<CR>", desc = "Check Outdated Packages" },
    },
    config = function()
      require("easy-dotnet").setup({
        -- Disable the built-in roslyn lsp since LazyVim's dotnet extra handles omnisharp/roslyn
        lsp = { enabled = false },
      })
    end,
  },
}
