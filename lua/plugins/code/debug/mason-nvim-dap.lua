return {
  "jay-babu/mason-nvim-dap.nvim",
  lazy = true,
  cmd = { "DapInstall", "DapUninstall" },
  config = function()
    require("mason-nvim-dap").setup({
      automatic_installation = true,
      ensure_installed = {
        "chrome",
        "firefox",
        "js",
        "php",
      },
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,

        php = function(config)
          config.adapters = {
            type = "executable",
            command = "node",
            args = { os.getenv("HOME") .. "/vscode-php-debug/out/phpDebug.js" },
          }

          require("mason-nvim-dap").default_setup(config)
        end,
      },
    })
  end,
}
