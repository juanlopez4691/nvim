return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  lazy = true,
  config = function()
    require('lsp-zero.settings').preset({})
  end,
  dependencies = {
    -- LSP Support
    require('plugins.lsp.nvim-lspconfig'),
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
                cmdline = '[Cmd]',
              })[entry.source.name]

              local kind_menu = ''
              local kind_kind = ' │'
              if entry.source.name ~= 'cmdline' then
                kind_menu = ' (' .. (strings[2] or '') .. ') ' .. (source_name or '')
                kind_kind = (strings[1] or '') .. ' │'
              end

              kind.menu = kind_menu
              kind.kind = kind_kind

              return kind
            end,
          },
        })
        -- Use buffer source for `/` and `?`.
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })
        -- Use cmdline & path source for ':'.
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'path' },
            { name = 'cmdline' },
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
      'hrsh7th/cmp-cmdline',
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

