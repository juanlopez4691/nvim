return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  lazy = true,
  config = function()
    require('lsp-zero.settings').preset({})
  end,
  dependencies = {
    -- LSP Support
    {
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          html = {
            filetypes = {
              'html',
              'javascript',
              'javascript.jsx',
              'javascriptreact',
              'typescript',
              'typescript.tsx',
              'typescriptreact',
            },
          },
          tailwindcss = {
            filetypes_exclude = { 'markdown' },
          },
        },
        setup = {
          tailwindcss = function(_, opts)
            local tw = require 'lspconfig.server_configurations.tailwindcss'
            --- @param ft string
            opts.filetypes = vim.tbl_filter(function(ft)
              return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
            end, tw.default_config.filetypes)
          end,
        },
      },
      config = function()
        require('mason').setup({
          ui = {
            border = 'rounded'
          }
        })

        local lsp = require('lsp-zero').preset({
          call_servers = 'local',
          float_border = 'rounded',
          configure_diagnostics = true,
          setup_servers_on_start = true,
        })

        lsp.on_attach(function(client, bufnr)
          -- see :help lsp-zero-keybindings
          -- to learn the available actions
          lsp.default_keymaps({buffer = bufnr})

          Map('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = bufnr, desc = 'LSP: References'})
          Map('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', {buffer = bufnr, desc = 'LSP: Definitions'})
          Map('n', 'gs', '<cmd>Telescope lsp_document_symbols<cr>', {buffer = bufnr, desc = 'LSP: Document symbols'})
          Map('n', 'gws', '<cmd>Telescope lsp_workspace_symbols<cr>', {buffer = bufnr, desc = 'LSP: Dynamic workspace symbols'})
          Map('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', {buffer = bufnr, desc = 'LSP: Implementations'})
        end)

        lsp.set_sign_icons({
          error = '✘',
          warn = '▲',
          hint = '⚑',
          info = '»'
        })

        -- Avoid errors in css files using tailwind directives.
        require('lspconfig').cssls.setup({
          settings = {
            css = {
              validate = false,
              lint = {
                unknownAtRules = 'ignore',
              },
            },
          },
          scss = {
            validate = false,
            lint = {
              unknownAtRules = 'ignore',
            },
          },
          less = {
            validate = false,
            lint = {
              unknownAtRules = 'ignore',
            },
          },
        })

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()
      end,
    },
    {
      'williamboman/mason-lspconfig.nvim',
      config = function()
        require('mason-lspconfig').setup()
      end,
    },

    -- Autocompletion
    {
      'hrsh7th/nvim-cmp',
      config = function()
        local cmp = require('cmp')
        local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
          preselect = 'item',
          confirmation = { completeopt = 'menu,menuone,noinsert' },
          completion = {
            completeopt = 'menu,menuone,noinsert'
          },
          mapping = {
            -- Navigate completion menu.
            ['<Tab>'] = cmp.mapping.select_next_item(cmp_select_opts),
            ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select_opts),
            -- `Enter` key to confirm completion.
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
            -- Navigate completion docs.
            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
            ['<C-d>'] = cmp.mapping.scroll_docs(4),
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          snippet = {
            expand = function(args)
              require'luasnip'.lsp_expand(args.body)
            end
          },
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'path' },
            { name = 'nvim_lsp_signature_help' },
            { name = 'nvim-lua' },
            { name = 'luasnip' },
          }),
          formatting = {
            fields = { 'kind', 'abbr', 'menu' },
            format = function(entry, vim_item)
              local kind = require('lspkind').cmp_format({
                mode = 'symbol_text',
                maxwidth = 50
              })(entry, vim_item)

              local strings = vim.split(kind.kind, '%s', { trimempty = true })
              local source_name = ({
                nvim_lsp = '[LSP]',
                buffer = '[Buffer]',
                path = '[Path]',
                nvim_lua = '[Lua]',
              })[entry.source.name]

              kind.kind = (strings[1] or '') .. ' │'
              kind.menu = ' (' .. (strings[2] or '') .. ') ' .. (source_name or '')

              return kind
            end,
          },
        })
      end,
    },

    -- Completion sources.
    {
      'hrsh7th/cmp-nvim-lsp',
    },
    {
      'hrsh7th/cmp-buffer',
    },
    {
      'hrsh7th/cmp-path',
    },
    {
      'hrsh7th/cmp-nvim-lua',
    },
    {
      'hrsh7th/cmp-nvim-lsp-signature-help',
    },

    -- Snippets.
    {
      'L3MON4D3/LuaSnip',
    },
  }
}

