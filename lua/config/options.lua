local opts = {
  clipboard = "unnamedplus",
  colorcolumn = '80',
  conceallevel = 2,
  confirm = true,
  cursorline = true,
  expandtab = true,
  fillchars = { eob = ' ' },
  fo = 'crqwanvblj',
  list = true,
  mouse = 'a',
  number = true,
  relativenumber = true,
  scrolloff = 4,
  shiftround = true,
  shiftwidth = 2,
  sidescrolloff = 4,
  signcolumn = 'yes',
  smartcase = true,
  smartindent = true,
  tabstop = 2,
  termguicolors = true,
  undofile = true,
  undolevels = 1000,
  winborder = 'rounded',
  wrap = false,
}
local globals = {
  mapleader = ' ',
  maplocalleader = '\\',
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end

