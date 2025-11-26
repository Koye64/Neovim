vim.pack.add({
  {
    src = 'https://github.com/saghen/blink.cmp',
    version = vim.version.range('v1.*'),
  }
})

require('blink.cmp').setup({
  fuzzy = {
    implementation = "prefer_rust_with_warning",
  },
});
