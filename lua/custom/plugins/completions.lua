return {
  'github/copilot.vim',

  config = function()
    vim.keymap.set('i', ';', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })

    vim.keymap.set('i', '<Tab>', ';')
    vim.g.copilot_no_tab_map = true
  end,
}
