return {
  settings = {
    intelephense = {
      stubs = require("plugins.lsp.inc.intelephense_stubs"),
    },
    files = {
      maxSize = 5000000,
    },
    telemetry = {
      enabled = false,
    },
  },
}
