local autoIndentEmptyLine = function()
  if #vim.fn.getline(".") == 0 then
    return [["_cc]]
  else
    return "i"
  end
end

return {
  groups = {
    {
      whichkey = true,
      prefix = "<leader>e",
      name = "+Edit",
      mappings = {
        {
          modes = { "n" },
          key = "<leader>eu",
          cmd = "<cmd>Telescope undo<CR>",
          opt = {
            desc = "Undo tree",
          },
        },
      },
    },
    {
      whichkey = false,
      mappings = {
        -- Indent/Reindent in visual modes.
        {
          modes = { "v" },
          key = ">",
          cmd = ">gv",
          opt = {
            desc = "Indent in",
          },
        },
        {
          modes = { "v" },
          key = "<",
          cmd = "<gv",
          opt = {
            desc = "Indent out",
          },
        },
        {
          modes = { "v" },
          key = ">",
          cmd = "<cmd>lua autoIndentEmptyLine()<CR>",
          opt = {
            desc = "Auto indent current empty line",
          },
        },
        -- Move line(s) up/down.
        {
          modes = { "n" },
          key = "<A-j>",
          cmd = "<cmd>m+<CR>==",
          opt = {
            desc = "Move current line down",
          },
        },
        {
          modes = { "n" },
          key = "<A-k>",
          cmd = "<cmd>m-2<CR>==",
          opt = {
            desc = "Move current line up",
          },
        },
        {
          modes = { "i" },
          key = "<A-j>",
          cmd = "<ESC>:m+<CR>==gi",
          opt = {
            desc = "Move current line down",
          },
        },
        {
          modes = { "i" },
          key = "<A-k>",
          cmd = "<ESC>:m-2<CR>==gi",
          opt = {
            desc = "Move current line up",
          },
        },
        {
          modes = { "v" },
          key = "<A-j>",
          cmd = ":m'>+<CR>gv=gv",
          opt = {
            desc = "Move current line down",
          },
        },
        {
          modes = { "v" },
          key = "<A-k>",
          cmd = ":m-2<CR>gv=gv",
          opt = {
            desc = "Move current line down",
          },
        },
      },
    },
  },
}
