return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>b",
      name = "+Buffers",
      icon = { icon = "﬘", color = "blue" },
      mappings = {
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bl",
          cmd = "<cmd>Telescope buffers prompt_prefix=👓›<CR>",
          icon = { icon = "", color = "blue" },
          opt = {
            desc = "Buffers list",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bn",
          cmd = "<cmd>bnext<CR>",
          icon = { icon = "󰒭", color = "blue" },
          opt = {
            desc = "Next buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bp",
          cmd = "<cmd>bprev<CR>",
          icon = { icon = "󰒮", color = "blue" },
          opt = {
            desc = "Previous buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<Tab>",
          cmd = "<cmd>bnext<CR>",
          opt = {
            desc = "Next buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<S-Tab>",
          cmd = "<cmd>bprev<CR>",
          opt = {
            desc = "Previous buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bc",
          icon = { icon = "󰅘", color = "blue" },
          cmd = "<cmd>bunload<CR>",
          opt = {
            desc = "Close buffer",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>bo",
          cmd = "<cmd>%bd|e#|bd#<CR>",
          icon = { icon = "󰱞", color = "blue" },
          opt = {
            desc = "Close other buffers",
          },
        },
      },
    },
  },
}
