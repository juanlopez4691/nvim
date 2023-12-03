return {
  "hrsh7th/nvim-cmp",
  cond = _G.Settings.plugins_enabled.nvim_cmp,
  dependencies = {
    -- Completion sources.
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-nvim-lsp-signature-help" },
    -- Snippets.
    {
      "L3MON4D3/LuaSnip",
    },
  },
  event = { "CmdLineEnter", "InsertEnter" },
  config = function()
    local cmp = require("cmp")
    local neogen = require("neogen")
    local compare = require("cmp.config.compare")

    -- Colorize the autocompletion menu icons.
    local cmp_menu_colors = require("core.cmp_menu_colors")

    cmp_menu_colors.colorize_cmp_menu()

    cmp.setup({
      preselect = "item",
      confirmation = {
        completeopt = "menu,menuone,noinsert",
      },
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      mapping = {
        -- Navigate completion menu.
        ["<Tab>"] = function(fallback)
          if cmp.visible() then
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            else
              cmp.select_next_item()
            end
          elseif neogen.jumpable() then
            neogen.jump_next()
          else
            fallback()
          end
        end,
        ["<S-Tab>"] = function(fallback)
          if cmp.visible() then
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            else
              cmp.select_prev_item()
            end
          elseif neogen.jumpable() then
            neogen.jump_prev()
          else
            fallback()
          end
        end,
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- Navigate completion docs.
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<Esc>"] = cmp.mapping.abort(),
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim-lua" },
        { name = "luasnip" },
      }),
      sorting = {
        priority_weight = 2,
        comparators = {
          compare.kind,
          compare.recently_used,
          compare.offset,
          compare.exact,
          -- compare.scopes,
          compare.score,
          compare.locality,
          -- compare.sort_text,
          compare.length,
          compare.order,
        },
      },
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local kind = require("lspkind").cmp_format({
            mode = "symbol_text",
          })(entry, vim_item)

          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          local source_name = ({
            nvim_lsp = "[LSP]",
            buffer = "[Buffer]",
            path = "[Path]",
            nvim_lua = "[Lua]",
            cmdline = "[Cmd]",
          })[entry.source.name]

          if entry.source.name == "cmdline" then
            kind.kind = "  "
          else
            kind.kind = " " .. (strings[1] or "") .. " "
          end

          if source_name ~= nil then
            kind.menu = source_name
          else
            kind.menu = ""
          end

          return kind
        end,
      },
    })
    -- Use buffer source for `/` and `?`.
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })
    -- Use cmdline & path source for ':'.
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "path" },
        { name = "cmdline" },
      },
    })
  end,
}
