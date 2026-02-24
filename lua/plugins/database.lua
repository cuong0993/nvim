return {
  {
    "kristijanhusak/vim-dadbod-ui",
    init = function()
      -- Configure vim-dadbod connections migrated from VSCode
      vim.g.dbs = {
        Alloy1 = "sqlserver://sa@localhost/Alloy1?TrustServerCertificate=true",
        LocalDB = "sqlserver://localhost",
        CUOND217 = "sqlserver://CUOND217?TrustServerCertificate=true",
        freedb = "sqlserver://cuong0993@cuongmssqlserver@tcp:cuongmssqlserver.database.windows.net:1433/freedb",
      }
    end,
  },
}
