return {
  "neovim/nvim-lspconfig",
  lazy = "true",
  opts = {
    servers = {
      html = {
        filetypes = {
          "html",
          "javascript",
          "javascript.jsx",
          "javascriptreact",
          "typescript",
          "typescript.tsx",
          "typescriptreact",
        },
      },
      tailwindcss = {
        filetypes_exclude = { "markdown" },
      },
      intelephense = {
        filetypes = {
          "php",
        },
      },
    },
    setup = {
      tailwindcss = function(_, opts)
        local tw = require("lspconfig.server_configurations.tailwindcss")
        --- @param ft string
        opts.filetypes = vim.tbl_filter(function(ft)
          return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
        end, tw.default_config.filetypes)
      end,
    },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local icons = require("core.icons").diagnostics
    local lsp = require("lsp-zero").preset({
      call_servers = "local",
      float_border = "rounded",
      configure_diagnostics = true,
      setup_servers_on_start = true,
    })

    lsp.set_sign_icons({
      error = icons.Error,
      warn = icons.Warn,
      hint = icons.Hint,
      info = icons.Info,
    })

    -- Avoid errors in css files using tailwind directives.
    lspconfig.cssls.setup({
      settings = {
        css = {
          validate = false,
          lint = {
            unknownAtRules = "ignore",
          },
        },
      },
      scss = {
        validate = false,
        lint = {
          unknownAtRules = "ignore",
        },
      },
      less = {
        validate = false,
        lint = {
          unknownAtRules = "ignore",
        },
      },
    })

    lspconfig.intelephense.setup({
      settings = {
        intelephense = {
          stubs = require("plugins.lsp.inc.intelephense_stubs"),
        },
        files = {
          maxSize = 5000000,
        },
        telemetry = {
          enabled = false,
        },
      },
    })

    -- Configure lua language server for neovim
    lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

    lsp.setup()
  end,
}
