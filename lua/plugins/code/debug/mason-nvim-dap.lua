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
            args = { vim.fn.stdpath("data") .. "/mason/packages/php-debug-adapter/extension/out/phpDebug.js" },
          }

          -- Setup debug configuration using vscode launch.json file.
          config.configurations = {}
          require("dap.ext.vscode").load_launchjs()

          require("mason-nvim-dap").default_setup(config)
        end,
      },
    })
  end,
}
