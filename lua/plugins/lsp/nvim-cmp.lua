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
    { "saadparwaiz1/cmp_luasnip" },
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      build = "make install_jsregexp",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function(_, opts)
        local luasnip = require("luasnip")
        if opts then
          luasnip.config.setup(opts)
        end

        vim.tbl_map(function(type)
          require("luasnip.loaders.from_" .. type).lazy_load()
        end, { "vscode", "snipmate", "lua" })

        -- friendly-snippets - enable standardized comments snippets
        luasnip.filetype_extend("typescript", { "tsdoc" })
        luasnip.filetype_extend("javascript", { "jsdoc" })
        luasnip.filetype_extend("lua", { "luadoc" })
        luasnip.filetype_extend("php", { "phpdoc" })
        luasnip.filetype_extend("sh", { "shelldoc" })

        -- Disable <Tab> and <S-Tab> for LuaSnip.
        -- This is required to allow super-tab in nvim_cmp.
        return {}
      end,
    },
    { "roobert/tailwindcss-colorizer-cmp.nvim", lazy = true },
  },
  event = { "CmdLineEnter", "InsertEnter" },
  config = function()
    local cmp = require("cmp")
    local compare = require("cmp.config.compare")
    local luasnip = require("luasnip")

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
      mapping = cmp.mapping.preset.insert({
        -- Navigate completion menu.
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            else
              cmp.select_next_item()
            end
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            else
              cmp.select_prev_item()
            end
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        -- Accept completion entry.
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- Navigate completion docs.
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        -- Close completion menu.
        ["<Esc>"] = cmp.mapping.abort(),
      }),
      window = {
        completion = cmp.config.window.bordered({
          border = "rounded",
          side_padding = 0,
          col_offset = -4,
        }),
        documentation = cmp.config.window.bordered(),
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim-lua" },
      }),
      sorting = {
        priority_weight = 2,
        comparators = {
          compare.kind,
          compare.exact,
          compare.offset,
          compare.score,
          compare.recently_used,
          compare.locality,
          compare.length,
          compare.order,
          -- compare.scopes,
          -- compare.sort_text,
        },
      },
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local icons = require("core.icons")
          local kind = icons.kind[vim_item.kind]
          local menu = vim_item.menu

          -- Limit lenght of completion entry
          if #vim_item.abbr > _G.Settings.cmp_max_length then
            vim_item.abbr =
              string.format("%s %s", string.sub(vim_item.abbr, 1, _G.Settings.cmp_max_length - 1), icons.ui.Ellipsis)
          end

          local strings = vim.split(kind, "%s", { trimempty = true })
          local source_name = ({
            buffer = "[Buffer]",
            cmdline = "[Cmd]",
            luasnip = "[Snip]",
            nvim_lsp = "[LSP]",
            nvim_lua = "[Lua]",
            path = "[Path]",
          })[entry.source.name]

          if entry.source.name == "cmdline" then
            kind = "  "
          else
            kind = string.format(" %s ", (strings[1] or ""))
          end

          if source_name ~= nil then
            menu = source_name
          else
            menu = ""
          end

          -- Apply tailwindcss colorization.
          local formatted_item = require("tailwindcss-colorizer-cmp").formatter(entry, vim_item)

          formatted_item.kind = kind
          formatted_item.menu = menu

          return formatted_item
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
