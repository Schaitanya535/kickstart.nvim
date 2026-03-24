return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = 'VeryLazy',
  config = function()
    local select = require('nvim-treesitter-textobjects.select')
    local move = require('nvim-treesitter-textobjects.move')
    local swap = require('nvim-treesitter-textobjects.swap')

    require('nvim-treesitter-textobjects').setup {
      select = { lookahead = true },
      move = { set_jumps = true },
    }

    -- Select textobjects
    local select_maps = {
      { 'af', '@function.outer', 'Select outer function' },
      { 'if', '@function.inner', 'Select inner function' },
      { 'ac', '@class.outer', 'Select outer class' },
      { 'ic', '@class.inner', 'Select inner class' },
      { 'aa', '@parameter.outer', 'Select outer parameter' },
      { 'ia', '@parameter.inner', 'Select inner parameter' },
    }
    for _, map in ipairs(select_maps) do
      vim.keymap.set({ 'x', 'o' }, map[1], function()
        select.select_textobject(map[2])
      end, { desc = map[3] })
    end

    -- Move to next/prev
    vim.keymap.set({ 'n', 'x', 'o' }, ']f', function() move.goto_next_start('@function.outer') end, { desc = 'Next function' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[f', function() move.goto_previous_start('@function.outer') end, { desc = 'Prev function' })
    vim.keymap.set({ 'n', 'x', 'o' }, ']a', function() move.goto_next_start('@parameter.outer') end, { desc = 'Next parameter' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[a', function() move.goto_previous_start('@parameter.outer') end, { desc = 'Prev parameter' })

    -- Swap parameters
    vim.keymap.set('n', '<leader>a', function() swap.swap_next('@parameter.inner') end, { desc = 'Swap next parameter' })
    vim.keymap.set('n', '<leader>A', function() swap.swap_previous('@parameter.inner') end, { desc = 'Swap prev parameter' })
  end,
}
