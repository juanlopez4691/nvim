return {
  groups = {
    {
      enabled = _G.Settings.plugins_enabled.nvim_dap,
      whichkey = true,
      prefix = "<leader>x",
      name = "+Debug",
      mappings = {
        {
          enabled = _G.Settings.plugins_enabled.nvim_dap_ui,
          modes = { "n" },
          key = "<leader>xu",
          cmd = "<cmd>lua require('dapui').toggle()<CR>",
          opt = {
            desc = "Toggle debug UI",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xe",
          cmd = "<cmd>lua require('dapui').eval(nil, { enter = true })<CR>",
          opt = {
            desc = "Evaluate",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xB",
          cmd = "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
          opt = {
            desc = "Conditional breakpoint",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xb",
          cmd = "<cmd>lua require('dap').toggle_breakpoint()<CR>",
          opt = {
            desc = "Toggle breakpoint",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xc",
          cmd = "<cmd>lua require('dap').continue()<CR>",
          opt = {
            desc = "Start/Continue [F5]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F5>",
          cmd = "<cmd>lua require('dap').continue()<CR>",
          opt = {
            desc = "Start/Continue [F5]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xC",
          cmd = "<cmd>lua require('dap').run_to_cursor()<CR>",
          opt = {
            desc = "Run to cursor [F4]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F4>",
          cmd = "<cmd>lua require('dap').run_to_cursor()<CR>",
          opt = {
            desc = "Run to cursor [F4]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xi",
          cmd = "<cmd>lua require('dap').step_into()<CR>",
          opt = {
            desc = "Step Into [F11]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F11>",
          cmd = "<cmd>lua require('dap').step_into()<CR>",
          opt = {
            desc = "Step Into [F11]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xo",
          cmd = "<cmd>lua require('dap').step_out()<CR>",
          opt = {
            desc = "Step Out [F12]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F12>",
          cmd = "<cmd>lua require('dap').step_out()<CR>",
          opt = {
            desc = "Step Out [F12]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xO",
          cmd = "<cmd>lua require('dap').step_over()<CR>",
          opt = {
            desc = "Step Over [F10]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F10>",
          cmd = "<cmd>lua require('dap').step_over()<CR>",
          opt = {
            desc = "Step Over [F10]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xp",
          cmd = "<cmd>lua require('dap').pause()<CR>",
          opt = {
            desc = "Pause [F6]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F6>",
          cmd = "<cmd>lua require('dap').pause()<CR>",
          opt = {
            desc = "Pause [F6]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xr",
          cmd = "<cmd>lua require('dap').restart()<CR>",
          opt = {
            desc = "Restart [F8]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F8>",
          cmd = "<cmd>lua require('dap').restart()<CR>",
          opt = {
            desc = "Restart [F8]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xt",
          cmd = "<cmd>lua require('dap').terminate()<CR>",
          opt = {
            desc = "Terminate [F9]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<F9>",
          cmd = "<cmd>lua require('dap').terminate()<CR>",
          opt = {
            desc = "Terminate [F9]",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xh",
          cmd = "<cmd>lua require('dap.ui.widgets').hover()<CR>",
          opt = {
            desc = "Hover info",
          },
        },
      },
    },
  },
}
