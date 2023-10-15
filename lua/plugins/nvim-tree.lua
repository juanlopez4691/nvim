-- Sets custom key mappings
local function do_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return {
      desc = 'nvim-tree: ' .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true
    }
  end

  -- Default mappings.
  api.config.mappings.default_on_attach(bufnr)

  -- Custom mappings.
  local mappings = {
    ['l'] = { api.node.open.edit, opts('Open') },
    ['o'] = { api.node.open.edit, opts('Open') },
    ['<CR>'] = { api.node.open.edit, opts('Open') },
    ['v'] = { api.node.open.vertical, opts('Open: Vertical Split') },
    ['h'] = { api.node.navigate.parent_close, opts('Close Directory') },
    ['C'] = { api.tree.change_root_to_node, opts('CD') },
    ['u'] = { api.node.navigate.parent, opts('Parent Directory') },
  }
  for key, value in pairs(mappings)
  do
    vim.keymap.set('n', key, value[1], value[2])
  end
end

-- Init plugin nvim-tree.
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  -- tag = 'nightly',
  cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeFocus', 'NvimTreeFindFileToggle' },
  config = function ()
    require('nvim-tree').setup({
      on_attach = do_on_attach,
      disable_netrw = true,
      hijack_netrw = true,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      sort_by = 'case_sensitive',
      update_focused_file = {
        enable = true,
        update_root = true,
        update_cwd = true,
      },
      view = {
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}
