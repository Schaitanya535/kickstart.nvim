-- Subword motion: make w/e/b stop at snake_case and camelCase boundaries.
-- foo_bar_baz -> w stops at `bar`, then `baz`. Same for fooBarBaz.
return {
  'chrisgrieser/nvim-spider',
  lazy = true,
  keys = {
    { 'w', "<cmd>lua require('spider').motion('w')<CR>", mode = { 'n', 'o', 'x' }, desc = 'Spider-w (subword)' },
    { 'e', "<cmd>lua require('spider').motion('e')<CR>", mode = { 'n', 'o', 'x' }, desc = 'Spider-e (subword)' },
    { 'b', "<cmd>lua require('spider').motion('b')<CR>", mode = { 'n', 'o', 'x' }, desc = 'Spider-b (subword)' },
  },
}
