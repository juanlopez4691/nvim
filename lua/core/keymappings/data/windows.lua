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
          key = "<C-h>",
          cmd = "<C-w>h",
          opt = {
            desc = "Jump to split left",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-j>",
          cmd = "<C-w>j",
          opt = {
            desc = "Jump to split down",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-k>",
          cmd = "<C-w>k",
          opt = {
            desc = "Jump to split up",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-l>",
          cmd = "<C-w>l",
          opt = {
            desc = "Jump to split right",
          },
        },
        -- Zoom in/out window split
        {
          enabled = true,
          modes = { "n" },
          key = "<C-w>zi",
          cmd = "<C-w>_ | <C-w>|",
          opt = {
            desc = "Zoom in",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-w>zo",
          cmd = "<C-w>=",
          opt = {
            desc = "Zoom out",
          },
        },
        -- Resize window splits.
        {
          enabled = true,
          modes = { "n" },
          key = "<A-Up>",
          cmd = "<cmd>resize +2<CR>",
          opt = {
            desc = "Grow horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<A-Down>",
          cmd = "<cmd>resize -2<CR>",
          opt = {
            desc = "Reduce horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<A-Left>",
          cmd = "<cmd>vertical resize +2<CR>",
          opt = {
            desc = "Grow vertical split",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<A-Right>",
          cmd = "<cmd>vertical resize -2<CR>",
          opt = {
            desc = "Reduce vertical split",
          },
        },
      },
    },
  },
}
