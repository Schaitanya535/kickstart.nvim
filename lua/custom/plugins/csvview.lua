return {
  'hat0uma/csvview.nvim',
  ft = { 'csv', 'tsv' },
  opts = {},
  config = function()
    require('csvview').setup {
      view = {
        display_mode = 'border',
      },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'csv', 'tsv' },
      callback = function()
        require('csvview').enable()
      end,
    })
  end,
}
