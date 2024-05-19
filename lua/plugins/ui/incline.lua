return {
  cond = _G.Settings.plugins_enabled.incline,
  "b0o/incline.nvim",
  event = "UIEnter",
  config = function()
    require("incline").setup({
      window = {
        padding = 0,
        margin = { horizontal = 0 },
      },
      render = function(props)
        local devicons_ok, devicons = pcall(require, "nvim-web-devicons")
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        if filename == "" then
          filename = "[No Name]"
        end

        local ft_color = ""
        local ft_icon = ""
        local icon = {}

        if devicons_ok then
          ft_icon, ft_color = devicons.get_icon_color(filename)
          icon = ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = "#333333" } or ""
        end

        local modified = vim.bo[props.buf].modified

        return {
          icon,
          " ",
          { filename, gui = modified and "bold,italic" or "bold" },
          " ",
          guibg = "#44406e",
        }
      end,
    })
  end,
}
