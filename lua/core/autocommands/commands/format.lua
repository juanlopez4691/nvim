local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = "*",
  group = augroup,
  callback = function(args)
    if not _G.Settings.plugins_enabled.code_format or not _G.Settings.format_on_save then
      return
    end

    require("conform").format({ bufnr = args.buf })
  end,
})

-- Define a command to run async formatting.
vim.api.nvim_create_user_command("CodeFormat", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
