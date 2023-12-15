return {
  groups = {
    {
      enabled = true,
      whichkey = false,
      -- Navigation
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<C-o>",
          cmd = "<C-o>zz",
          opt = {
            desc = "Go back to previous edit location",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-i>",
          cmd = "<C-i>zz",
          opt = {
            desc = "Go to next edit location",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-d>",
          cmd = "<C-d>zz",
          opt = {
            desc = "Scroll down half screen",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-u>",
          cmd = "<C-u>zz",
          opt = {
            desc = "Scroll up half screen",
          },
        },
        -- Improved cursor movement.
        {
          enabled = true,
          modes = { "n" },
          key = "j",
          cmd = "gj",
          opt = {
            desc = "Move cursor down",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "k",
          cmd = "gk",
          opt = {
            desc = "Move cursor up",
          },
        },
        -- Move cursor in insert modes. You cheater!
        {
          enabled = true,
          modes = { "i" },
          key = "<A-h>",
          cmd = "<C-o>h",
          opt = {
            desc = "Move cursor left",
          },
        },
        {
          enabled = true,
          modes = { "i" },
          key = "<A-l>",
          cmd = "<C-o>l",
          opt = {
            desc = "Move cursor rigth",
          },
        },
      },
    },
  },
}
