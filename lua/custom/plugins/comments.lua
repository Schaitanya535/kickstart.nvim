return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },

  config = function()
    require('todo-comments').setup {
      -- Toggle Comments
      -- For normal mode: Toggle comment for the current line
      vim.keymap.set('n', '<C-_>', function()
        require('Comment.api').toggle.linewise.current()
      end, { desc = 'Toggle comment (linewise)' }),

      -- For visual mode: Toggle comment for the selected lines
      --
      vim.keymap.set('x', '<C-_>', function()
        local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
        -- vim.api.nvim_feedkeys(esc, 'nx', false)
        require('Comment.api').toggle.blockwise(vim.fn.visualmode())
      end, { desc = 'toggle comment (blockwise)' }),
    }
  end,
}
