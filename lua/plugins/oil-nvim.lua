vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim' },
})

require("oil").setup({
  columns = {
    "icon",
    "permissions",
    "size",
    "mime",
  },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
