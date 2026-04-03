return {
  'hat0uma/csvview.nvim',
  ft = { 'csv', 'tsv' },
  opts = {},
  config = function()
    require('csvview').setup()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'csv', 'tsv' },
      callback = function()
        require('csvview').enable()
      end,
    })
  end,
}
