return {
  'numToStr/FTerm.nvim',
  config = function()
    fterm = require 'FTerm'
    yazi_term = fterm:new {
      cmd = 'yazi ' .. vim.fn.expand '%:p:h', -- Replace with the Git client you use
      dimensions = {
        height = 0.8, -- Height as a percentage of the editor height
        width = 0.8, -- Width as a percentage of the editor width
      },
    }
    require('FTerm').setup {
      border = 'rounded', -- Border style for the floating window
      dimensions = {
        height = 0.8, -- Height as a percentage of the editor height
        width = 0.8, -- Width as a percentage of the editor width
        -- Keybindings to toggle the terminal
        vim.keymap.set('n', '<C-Space>', fterm.toggle, { desc = 'Toggle FTerm (Normal mode)' }),
        vim.keymap.set('t', '<C-Space>', fterm.toggle, { desc = 'Toggle FTerm (Terminal mode)' }),
        vim.keymap.set('n', '<leader>y', function()
          yazi_term:toggle()
        end, { desc = 'Open yazi in FTerm' }),
        vim.keymap.set('n', '<leader>g', function()
          fterm
            :new({
              cmd = 'lazygit', -- Replace with the Git client you use
            })
            :toggle()
        end, { desc = 'Open LazyGit in FTerm' }),
      },
    }
  end,
}
