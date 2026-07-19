return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown', 'Avante' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- markdown + markdown_inline parsers (already installed)
    'nvim-tree/nvim-web-devicons', -- icon provider
  },
  opts = {},
}
