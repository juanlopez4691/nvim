return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>t",
      name = "+Terminal",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.toggleterm,
          modes = { "n" },
          key = "<leader>tf",
          cmd = "<cmd>ToggleTerm direction=float<CR>",
          opt = {
            desc = "Terminal: open float",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.toggleterm,
          modes = { "n" },
          key = "<leader>th",
          cmd = '<cmd>lua ToggleSomeTerminal(20, "horizontal")<cr>',
          opt = {
            desc = "Terminal: open horizontal split",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.toggleterm,
          modes = { "n" },
          key = "<leader>tv",
          cmd = '<cmd>lua ToggleSomeTerminal(0, "vertical")<cr>',
          opt = {
            desc = "Terminal: open vertical split",
          },
        },
        {
          enabled = term,
          modes = { "n" },
          key = "<leader>tt",
          cmd = "<cmd>term<cr>",
          opt = {
            desc = "Terminal: open terminal",
          },
        },
      },
    },
    {
      enabled = true,
      whichkey = false,
      mappings = {
        {
          enabled = true,
          modes = { "t" },
          key = "<C-h>",
          cmd = "<cmd>wincmd h<cr>",
          opt = {
            desc = "Terminal: jump to split left",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<C-j>",
          cmd = "<cmd>wincmd j<cr>",
          opt = {
            desc = "Terminal: jump to split down",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<C-k>",
          cmd = "<cmd>wincmd k<cr>",
          opt = {
            desc = "Terminal: jump to split up",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<C-l>",
          cmd = "<cmd>wincmd l<cr>",
          opt = {
            desc = "Terminal: jump to split right",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<C-w>",
          cmd = "<C-\\><C-n><C-w>",
          opt = {
            desc = "Terminal: window command prefix",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<C-n>",
          cmd = "<C-\\><C-n>",
          opt = {
            desc = "Terminal: escape to normal mode",
          },
        },
        -- Terminal: resize window splits.
        {
          enabled = true,
          modes = { "t" },
          key = "<A-Up>",
          cmd = "<cmd>resize +2<CR>",
          opt = {
            desc = "Grow horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<A-Down>",
          cmd = "<cmd>resize -2<CR>",
          opt = {
            desc = "Reduce horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "t" },
          key = "<A-Left>",
          cmd = "<cmd>vertical resize +2<CR>",
          opt = {
            desc = "Grow vertical split",
          },
        },
        {
          enabled = true,
          modes = { "t" },
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
