vim.pack.add({
  {
    src = 'https://github.com/nvim-treesitter/nvim-treesitter',
    version = 'master'
  }
})

---@diagnostic disable-next-line: missing-fields
require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "latex" },
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})

vim.api.nvim_create_autocmd('PackChanged', {
  desc = 'Update nvim-treesitter',
  group = vim.api.nvim_create_augroup('nvim-treesitter-updater', { clear = true }),
  callback = function(event)
    if event.data.kind == 'update' then
      vim.notify('nvim-treesitter updated, running TSUpdate...', vim.log.levels.INFO)
      ---@diagnostic disable-next-line: param-type-mismatch
      local ok = pcall(vim.cmd, 'TSUpdate')
      if ok then
        vim.notify('TSUpdate completed successfully', vim.log.levels.INFO)
      else
        vim.notify('TSUpdate unsuccessful', vim.log.levels.WARN)
      end
    end
  end,
})
