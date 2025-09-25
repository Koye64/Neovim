vim.pack.add({
  { src = 'https://github.com/folke/lazydev.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
})

require('lazydev').setup()

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('texlab')
vim.lsp.enable('tinymist')

