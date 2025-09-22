vim.pack.add({
  { src="https://github.com/nvim-treesitter/nvim-treesitter", version="master" }
})

require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})
