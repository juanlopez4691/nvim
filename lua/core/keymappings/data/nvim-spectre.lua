local searchReplace = function ()
  require('spectre').open()
end

return {
  groups = {
    {
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

