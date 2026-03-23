return {
  'numToStr/FTerm.nvim',
  config = function()
    fterm = require 'FTerm'
    require('FTerm').setup {
      border = 'rounded',
      dimensions = {
        height = 0.8,
        width = 0.8,
      },
    }

    vim.keymap.set('n', '<C-Space>', fterm.toggle, { desc = 'Toggle FTerm (Normal mode)' })
    vim.keymap.set('t', '<C-Space>', fterm.toggle, { desc = 'Toggle FTerm (Terminal mode)' })
    vim.keymap.set('n', '<leader>g', function()
      fterm
        :new({
          cmd = 'lazygit',
        })
        :toggle()
    end, { desc = 'Open LazyGit in FTerm' })
  end,
}
