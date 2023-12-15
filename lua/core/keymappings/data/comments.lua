return {
  groups = {
    {
      enabled = true,
      whichkey = true,
      prefix = "<leader>ck",
      name = "+Comment blocks",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.neogen,
          modes = { "n" },
          key = "<leader>ckl",
          cmd = "<cmd>lua AddCommentBlock('file')<CR>",
          opt = {
            desc = "File comment",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.neogen,
          modes = { "n" },
          key = "<leader>ckc",
          cmd = "<cmd>lua AddCommentBlock('class')<CR>",
          opt = {
            desc = "Class comment",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.neogen,
          modes = { "n" },
          key = "<leader>ckf",
          cmd = "<cmd>lua AddCommentBlock('func')<CR>",
          opt = {
            desc = "Function comment",
          },
        },
        {
          enabled = _G.Settings.plugins_enabled.neogen,
          modes = { "n" },
          key = "<leader>ckt",
          cmd = "<cmd>lua AddCommentBlock('type')<CR>",
          opt = {
            desc = "Type comment",
          },
        },
      },
    },
  },
}
