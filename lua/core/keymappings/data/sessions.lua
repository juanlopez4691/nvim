return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>S",
      name = "+Sessions",
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sl",
          cmd = "<cmd>lua require('core.sessions').list_sessions()<CR>",
          opt = {
            desc = "Load session",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sw",
          cmd = "<cmd>lua require('core.sessions').save_session()<CR>",
          opt = {
            desc = "Write session",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sd",
          cmd = "<cmd>lua require('core.sessions').delete_session()<CR>",
          opt = {
            desc = "Delete session",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>Sa",
          cmd = "<cmd>lua require('core.sessions').add_session()<CR>",
          opt = {
            desc = "Add new session",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>St",
          cmd = "<cmd>lua require('core.sessions').toggle_session_autosave()<CR>",
          opt = {
            desc = "Toggle session autosave",
          },
        },
      },
    },
  },
}
