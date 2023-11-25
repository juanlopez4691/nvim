local searchReplace = function ()
  require('spectre').open()
end

return {
  groups = {
    {
      whichkey = true,
      prefix = '<leader>s',
      name = 'Search',
      mappings = {
        {
          modes = { 'n' },
          key = '<leader>sr',
          cmd = searchReplace,
          opt = {
            desc = 'Search and replace in files',
          },
        },
      },
    },
  },
}
