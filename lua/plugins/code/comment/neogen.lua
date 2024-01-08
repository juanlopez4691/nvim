return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  cond = _G.Settings.plugins_enabled.neogen,
  config = function()
    local neogen = require("neogen")

    neogen.setup()

    _G.AddCommentBlock = function(comment_type)
      neogen.generate({ type = comment_type })
    end
  end,
}
