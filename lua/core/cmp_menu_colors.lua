-- Define colors for autcompletion menu entries.
-- See https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu
local M = {}

M.cmp_menu_colors = {
  PmenuSel = { bg = "#282C34", fg = "NONE" },
  Pmenu = { fg = "#C5CDD9", bg = "#22252A" },

  CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
  CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true },
  CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
  CmpItemKindClass = { fg = "#22252A", bg = "#A377BF" },
  CmpItemKindColor = { fg = "#22252A", bg = "#58B5A8" },
  CmpItemKindConstant = { fg = "#22252A", bg = "#D4BB6C" },
  CmpItemKindConstructor = { fg = "#22252A", bg = "#D4BB6C" },
  CmpItemKindEnum = { fg = "#22252A", bg = "#9FBD73" },
  CmpItemKindEnumMember = { fg = "#22252A", bg = "#6C8ED4" },
  CmpItemKindEvent = { fg = "#22252A", bg = "#B5585F" },
  CmpItemKindField = { fg = "#22252A", bg = "#B5585F" },
  CmpItemKindFile = { fg = "#22252A", bg = "#7E8294" },
  CmpItemKindFolder = { fg = "#22252A", bg = "#D4A959" },
  CmpItemKindFunction = { fg = "#22252A", bg = "#A377BF" },
  CmpItemKindInterface = { fg = "#22252A", bg = "#58B5A8" },
  CmpItemKindKeyword = { fg = "#22252A", bg = "#9FBD73" },
  CmpItemKindMethod = { fg = "#22252A", bg = "#6C8ED4" },
  CmpItemKindModule = { fg = "#22252A", bg = "#A377BF" },
  CmpItemKindOperator = { fg = "#22252A", bg = "#A377BF" },
  CmpItemKindProperty = { fg = "#22252A", bg = "#B5585F" },
  CmpItemKindReference = { fg = "#22252A", bg = "#D4BB6C" },
  CmpItemKindSnippet = { fg = "#22252A", bg = "#D4A959" },
  CmpItemKindStruct = { fg = "#22252A", bg = "#A377BF" },
  CmpItemKindText = { fg = "#22252A", bg = "#9FBD73" },
  CmpItemKindTypeParameter = { fg = "#22252A", bg = "#58B5A8" },
  CmpItemKindUnit = { fg = "#22252A", bg = "#D4A959" },
  CmpItemKindValue = { fg = "#22252A", bg = "#6C8ED4" },
  CmpItemKindVariable = { fg = "#22252A", bg = "#7E8294" },
  CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },
}

M.colorize_cmp_menu = function()
  for key, colors in pairs(M.cmp_menu_colors) do
    vim.api.nvim_set_hl(0, key, colors)
  end
end

return M
