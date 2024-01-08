return {
  select = {
    enable = true,
    lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
    keymaps = {
      -- You can use the capture groups defined in textobjects.scm
      ["aa"] = { query = "@parameter.outer", desc = "Select around parameter" },
      ["ia"] = { query = "@parameter.inner", desc = "Select inside parameter" },
      ["af"] = { query = "@function.outer", desc = "Select around function" },
      ["if"] = { query = "@function.inner", desc = "Select inside function" },
      ["ac"] = { query = "@class.outer", desc = "Select around class or interface" },
      ["ic"] = { query = "@class.inner", desc = "Select inside class or interface" },
    },
  },
  move = {
    enable = true,
    set_jumps = true, -- Whether to set jumps in the jumplist
    goto_next_start = {
      ["]m"] = { query = "@function.outer", desc = "Next function start" },
      ["]]"] = { query = "@class.outer", desc = "Next class start" },
    },
    goto_next_end = {
      ["]M"] = { query = "@function.outer", desc = "Next function end" },
      ["]["] = { query = "@class.outer", desc = "Next class end" },
    },
    goto_previous_start = {
      ["[m"] = { query = "@function.outer", desc = "Previous function start" },
      ["[["] = { query = "@class.outer", desc = "Previous class start" },
    },
    goto_previous_end = {
      ["[M"] = { query = "@function.outer", desc = "Previous function end" },
      ["[]"] = { query = "@class.outer", desc = "Previous class end" },
    },
  },
  swap = {
    enable = true,
    swap_next = {
      ["<leader>ea"] = { query = "@parameter.inner", desc = "Swap next parameter" },
    },
    swap_previous = {
      ["<leader>eA"] = { query = "@parameter.inner", desc = "Swap previous parameter" },
    },
  },
}
