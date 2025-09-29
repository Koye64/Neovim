vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/folke/lazydev.nvim' },
})

require('lazydev').setup()

vim.lsp.enable('bashls')
vim.lsp.enable('clangd')
vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('texlab')
vim.lsp.enable('tinymist')

---@diagnostic disable: need-check-nil
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(cb_args)
    local client = vim.lsp.get_client_by_id(cb_args.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(
        true,
        client.id,
        cb_args.buf,
        { autotrigger = true }
      )
      vim.keymap.set('i', '<C-Space>', function()
        vim.lsp.completion.get()
      end)
    end
  end
})

