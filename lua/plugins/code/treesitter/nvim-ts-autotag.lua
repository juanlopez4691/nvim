return {
  "windwp/nvim-ts-autotag",
  lazy = true,
  config = function()
    require("nvim-ts-autotag").setup({
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {
          "astro",
          "glimmer",
          "handlebars",
          "hbs",
          "html",
          "javascript",
          "javascriptreact",
          "jsx",
          "markdown",
          "php",
          "rescript",
          "svelte",
          "tsx",
          "twig",
          "typescript",
          "typescriptreact",
          "vue",
          "xml",
        },
      },
    })
  end,
}
