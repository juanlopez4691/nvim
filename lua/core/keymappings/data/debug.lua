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
          cmd = "<cmd>lua require('dapui').eval()<CR>",
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
            desc = "Continue",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xa",
          cmd = "<cmd>lua require('dap').continue({ before = get_args })<CR>",
          opt = {
            desc = "Run with args",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xC",
          cmd = "<cmd>lua require('dap').run_to_cursor()<CR>",
          opt = {
            desc = "Run to cursor",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xg",
          cmd = "<cmd>lua require('dap').goto_()<CR>",
          opt = {
            desc = "Go to line (no execute)",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xi",
          cmd = "<cmd>lua require('dap').step_into()<CR>",
          opt = {
            desc = "Step Into",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xj",
          cmd = "<cmd>lua require('dap').down()<CR>",
          opt = {
            desc = "Down in callstack",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xk",
          cmd = "<cmd>lua require('dap').up()<CR>",
          opt = {
            desc = "Up in callstack",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xl",
          cmd = "<cmd>lua require('dap').run_last()<CR>",
          opt = {
            desc = "Run Last",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xo",
          cmd = "<cmd>lua require('dap').step_out()<CR>",
          opt = {
            desc = "Step Out",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xO",
          cmd = "<cmd>lua require('dap').step_over()<CR>",
          opt = {
            desc = "Step Over",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xp",
          cmd = "<cmd>lua require('dap').pause()<CR>",
          opt = {
            desc = "Pause",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xr",
          cmd = "<cmd>lua require('dap').repl.toggle()<CR>",
          opt = {
            desc = "Toggle REPL",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xs",
          cmd = "<cmd>lua require('dap').session()<CR>",
          opt = {
            desc = "Session",
          },
        },
        {
          enabled = true,
          modes = { "n" },
          key = "<leader>xt",
          cmd = "<cmd>lua require('dap').terminate()<CR>",
          opt = {
            desc = "Terminate",
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
