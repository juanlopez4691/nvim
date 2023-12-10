return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>ck",
      name = "+Comment blocks",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>ckl",
          cmd = "<cmd>lua AddCommentBlock('file')<CR>",
          opt = {
            desc = "File comment",
          },
        },
        {
          modes = { "n" },
          key = "<leader>ckc",
          cmd = "<cmd>lua AddCommentBlock('class')<CR>",
          opt = {
            desc = "Class comment",
          },
        },
        {
          modes = { "n" },
          key = "<leader>ckf",
          cmd = "<cmd>lua AddCommentBlock('func')<CR>",
          opt = {
            desc = "Function comment",
          },
        },
        {
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
