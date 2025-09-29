vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim' },
})

-- Text Editing
require('mini.ai').setup({
  mappings = {
    around_next = '',
    inside_next = '',
    around_last = '',
    inside_last = '',
  },
})
require('mini.bracketed').setup()
require('mini.move').setup()
require('mini.pairs').setup({
  mappings = {
    ['$'] = {
      action = 'closeopen',
      pair = '$$',
      neigh_pattern = '[^%a\\][^0-9]'
    },
    ["'"] = {
      action = 'closeopen',
      pair = "''",
      neigh_pattern = '[^%a\\\'].',
      register = { cr = false }
    },
  },
})
require('mini.splitjoin').setup()
require('mini.surround').setup({
  mappings = {
    add = 'ys',
    delete = 'ds',
    replace = 'cs',
    find = '',
    find_left = '',
    highlight = '',
  },
})
