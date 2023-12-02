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

    local lsp = require("lsp-zero").preset({
      call_servers = "local",
      float_border = "rounded",
      configure_diagnostics = true,
      setup_servers_on_start = true,
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()

    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
      },
    }

    require("mason").setup({
      ui = {
        border = "rounded",
      },
    })

    lsp.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp.default_keymaps({ buffer = bufnr })
    end)

    lsp.set_sign_icons({
      error = "✘",
      warn = "▲",
      hint = "⚑",
      info = "»",
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
          stubs = require("plugins.intelephense.stubs"),
        },
        files = {
          maxSize = 5000000,
        },
        telemetry = {
          enabled = false,
        },
      },
      capabilities = capabilities,
    })

    -- (Optional) Configure lua language server for neovim
    lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

    lsp.setup()
  end,
}
