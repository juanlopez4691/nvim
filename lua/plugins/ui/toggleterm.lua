return {
  "akinsho/toggleterm.nvim",
  cond = _G.Settings.plugins_enabled.toggleterm,
  version = "*",
  command = "ToggleTerm",
  config = function()
    require("toggleterm").setup({
      size = function(term)
        print(term.direction)
        if term.direction == "horizontal" then
          return _G.Settings.terminal.size.horizontal.height
        elseif term.direction == "vertical" then
          return _G.Settings.terminal.size.vertical.width
        end
      end,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
        width = math.ceil(vim.o.columns * 0.95),
        height = math.ceil(vim.o.lines * 0.87),
      },
    })

    ToggleSomeTerminal = function(size, direction)
      local count = vim.v.count1
      require("toggleterm").toggle(count, size, vim.loop.cwd(), direction)
    end

    TerminalFullWindow = function(cmd)
      local Terminal = require("toggleterm.terminal").Terminal

      Terminal:new({
        cmd = cmd,
        hidden = true,
        direction = "float",
        float_opts = {
          border = "none",
          width = 100000,
          height = 100000,
        },
        close_on_exit = true,
        on_open = function(term)
          vim.cmd("startinsert!")
          vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
          vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<ESC>", "", { noremap = true, silent = true })
        end,
        on_close = function()
          vim.cmd("startinsert!")
        end,
      }):toggle()
    end
  end,
}
