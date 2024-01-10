return {
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = "Mason",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "j-hui/fidget.nvim",
    },
    config = function()
      local lsp = vim.lsp
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local icons = require("core.icons").diagnostics
      local lsp_keymappings = require("plugins.lsp.inc.lsp_keys")

      -- Set border style for floating windows.
      require("lspconfig.ui.windows").default_options.border = "rounded"

      -- Set up handler for lsp clients on_attach event.
      local on_attach = function(_, bufnr)
        for _, m in ipairs(lsp_keymappings) do
          vim.keymap.set("n", m.key, m.cmd, { buffer = bufnr, remap = false, desc = m.desc })
        end
      end

      -- Set up fidget notifications.
      require("fidget").setup({})

      -- Set up diagnostics.
      vim.diagnostic.config({
        enable = true,
        underline = false,
        update_in_insert = false,
        severity_sort = true,
        float = {
          focusable = false,
          border = "rounded",
          source = "always",
        },
      })
      -- Add custom icons to diagnostics.
      for type, icon in pairs(icons) do
        local name = "DiagnosticSign" .. type
        vim.fn.sign_define(name, { text = icon, texthl = name })
      end

      -- Set up mason.
      mason.setup({
        ui = {
          border = "rounded",
          width = 0.95,
          height = 0.85,
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      -- Get cmp_nvim_lsp capabilities if available.
      local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      local capabilities
      if has_cmp then
        capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
      else
        capabilities = vim.lsp.protocol.make_client_capabilities()
      end

      -- Prepare default LSP config.
      local default_lsp_config = {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
          debounce_text_changes = 200,
          allow_incremental_sync = true,
        },
      }

      -- Sets up a given LSP server.
      local server_setup = function(server_name)
        local server_config = require("plugins.lsp.inc." .. server_name)

        lspconfig[server_name].setup(vim.tbl_deep_extend("force", default_lsp_config, server_config))
      end

      mason_lspconfig.setup({
        ensure_installed = require("plugins.lsp.inc.servers"),
        automatic_installation = true,
        handlers = {
          function(server)
            -- Setup LSP servers.
            lspconfig[server].setup(default_lsp_config)
          end,
          ["cssls"] = function()
            server_setup("cssls")
          end,
          ["intelephense"] = function()
            server_setup("intelephense")
          end,
          ["lua_ls"] = function()
            server_setup("lua_ls")
          end,
          ["tailwindcss"] = function()
            return lspconfig.tailwindcss.setup(require("plugins.lsp.inc.tailwindcss"))
          end,
        },
      })

      -- Set up hover and signature help.
      lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, {
        border = "rounded",
      })
    end,
  },
}
