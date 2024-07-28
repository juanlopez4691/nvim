return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>S",
      name = "+Sessions",
      icon = { icon = "", color = "cyan" },
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sl",
          cmd = "<cmd>lua require('core.sessions').list_sessions()<CR>",
          icon = { icon = "", color = "cyan" },
          opt = {
            desc = "Load",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sw",
          cmd = "<cmd>lua require('core.sessions').save_session()<CR>",
          icon = { icon = "", color = "cyan" },
          opt = {
            desc = "Write",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sd",
          cmd = "<cmd>lua require('core.sessions').delete_session()<CR>",
          icon = { icon = "󱎘", color = "cyan" },
          opt = {
            desc = "Delete",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sa",
          cmd = "<cmd>lua require('core.sessions').add_session()<CR>",
          icon = { icon = "󰐕", color = "cyan" },
          opt = {
            desc = "Add new",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>St",
          cmd = "<cmd>lua require('core.sessions').toggle_session_autosave()<CR>",
          icon = { icon = "", color = "cyan" },
          opt = {
            desc = "Toggle autosave",
          },
        },
      },
    },
  },
}
