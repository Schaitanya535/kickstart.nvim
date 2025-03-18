return {
  'akinsho/bufferline.nvim',
  version = '*', -- Use the latest stable version
  dependencies = 'nvim-tree/nvim-web-devicons', -- Optional for file icons
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'ordinal', -- Show buffer numbers
        diagnostics = 'nvim_lsp', -- Show LSP diagnostics in the bufferline
        separator_style = 'slant', -- Aesthetic separator style
        show_buffer_close_icons = false,
        show_close_icon = false,
        offsets = {
          { filetype = 'NvimTree', text = 'File Explorer', text_align = 'center' },
        },
      },
    }
  end,
}
