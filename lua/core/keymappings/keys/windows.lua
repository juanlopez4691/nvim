local function try_jump_window(direction, count)
  local prev_win_nr = vim.fn.winnr()

  vim.cmd(count .. "wincmd " .. direction)
  return vim.fn.winnr() ~= prev_win_nr
end

local function jump_window_with_wrap(direction, opposite)
  return function()
    if not try_jump_window(direction, vim.v.count1) then
      try_jump_window(opposite, 999)
    end
  end
end

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
          cmd = jump_window_with_wrap("h", "l"),
          opt = {
            desc = "Jump to split left",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-j>",
          cmd = jump_window_with_wrap("j", "k"),
          opt = {
            desc = "Jump to split down",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-k>",
          cmd = jump_window_with_wrap("k", "j"),
          opt = {
            desc = "Jump to split up",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<C-l>",
          cmd = jump_window_with_wrap("l", "h"),
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
          modes = { "n", "t" },
          key = "<A-Up>",
          cmd = "<cmd>resize +2<CR>",
          opt = {
            desc = "Grow horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "n", "t" },
          key = "<A-Down>",
          cmd = "<cmd>resize -2<CR>",
          opt = {
            desc = "Reduce horizontal split",
          },
        },
        {
          enabled = true,
          modes = { "n", "t" },
          key = "<A-Left>",
          cmd = "<cmd>vertical resize +2<CR>",
          opt = {
            desc = "Grow vertical split",
          },
        },
        -- Fix for iterm2
        {
          enabled = true,
          modes = { "n", "t" },
          key = "<M-b>",
          cmd = "<cmd>vertical resize +2<CR>",
          opt = {
            desc = "Grow vertical split",
          },
        },
        {
          enabled = true,
          modes = { "n", "t" },
          key = "<A-Right>",
          cmd = "<cmd>vertical resize -2<CR>",
          opt = {
            desc = "Reduce vertical split",
          },
        },
        -- Fix for iterm2
        {
          enabled = true,
          modes = { "n", "t" },
          key = "<M-f>",
          cmd = "<cmd>vertical resize -2<CR>",
          opt = {
            desc = "Reduce vertical split",
          },
        },
      },
    },
  },
}
