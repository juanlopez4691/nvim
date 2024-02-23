return {
  "akinsho/toggleterm.nvim",
  cond = _G.Settings.plugins_enabled.toggleterm,
  version = "*",
  cmd = "ToggleTerm",
  event = "VeryLazy",
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
      size = function(term)
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
      toggleterm.toggle(count, size, vim.loop.cwd(), direction)
    end

    TerminalFullWindow = function(cmd, opts)
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
          local bufnr = term.bufnr

          vim.cmd("startinsert!")
          vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<ESC>", "", { noremap = true, silent = true })

          if opts.ctrl_hjkl == false then
            vim.keymap.set("t", "<c-h>", "<c-h>", { buffer = bufnr, nowait = true })
            vim.keymap.set("t", "<c-j>", "<c-j>", { buffer = bufnr, nowait = true })
            vim.keymap.set("t", "<c-k>", "<c-k>", { buffer = bufnr, nowait = true })
            vim.keymap.set("t", "<c-l>", "<c-l>", { buffer = bufnr, nowait = true })
          end
        end,
        on_close = function()
          vim.cmd("startinsert!")
        end,
      }):toggle()
    end
  end,
}
