return {
  "rcarriga/nvim-dap-ui",
  lazy = true,
  cond = _G.Settings.plugins_enabled.nvim_dap_ui,
  dependencies = { "nvim-neotest/nvim-nio" },
  branch = "master",
  opts = {
    icons = { expanded = "", collapsed = "", circular = "" },
    mappings = {
      -- Use a table to apply multiple mappings
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      edit = "e",
      repl = "r",
      toggle = "t",
    },
    -- Use this to override mappings for specific elements
    element_mappings = {},
    expand_lines = true,
    layouts = {
      {
        elements = {
          { id = "repl", size = 0.01 },
          { id = "scopes", size = 0.33 },
          { id = "watches", size = 0.33 },
          { id = "breakpoints", size = 0.33 },
        },
        size = 0.33,
        position = "right",
      },
      {
        elements = {
          { id = "console", size = 0.5 },
          { id = "stacks", size = 0.5 },
        },
        size = 0.25,
        position = "bottom",
      },
    },
    controls = {
      enabled = true,
      -- Display controls in this element
      element = "repl",
      icons = {
        pause = "",
        play = "",
        step_into = "",
        step_over = "",
        step_out = "",
        step_back = "",
        run_last = "",
        terminate = "",
      },
    },
    floating = {
      max_height = 0.7,
      max_width = 0.5, -- Floats will be treated as percentage of your screen.
      border = "rounded",
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
    windows = { indent = 1 },
    render = {
      max_type_length = nil, -- Can be integer or nil.
      max_value_lines = 100, -- Can be integer or nil.
    },
  },
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")

    -- Set up neodev to ensure nvim-dap-ui gets type checking,
    -- documentation and autocompletion for all API functions.
    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
    })

    -- Setup dap config by VsCode launch.json file
    require("dap.ext.vscode").load_launchjs()

    dapui.setup(opts)

    -- Open dap-ui when dap session is started.
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

    -- Close dap-ui when dap session is terminated.
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    ---@diagnostic disable-next-line: undefined-field
  end,
}
