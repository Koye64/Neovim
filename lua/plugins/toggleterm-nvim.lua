vim.pack.add({
  { src = 'https://github.com/akinsho/toggleterm.nvim' },
})

require("toggleterm").setup()

-- binds to Ctrl+/
vim.keymap.set({ "n", "v", "i", "t", "x" }, "<C-_>", "<CMD>ToggleTerm<CR>", { desc = "Toggle ToggleTerm" })
