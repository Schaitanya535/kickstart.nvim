return {

  'nvim-lualine/lualine.nvim',

  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight',
        section_seperators = ' | ',
        componet_seperators = ' | ',
        icons_enabled = true,
      },

      dependencies = { 'nvim-tree/nvim-web-devicons' },
      sections = {

        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
