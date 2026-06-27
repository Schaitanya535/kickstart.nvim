-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
vim.filetype.add {
  extension = {
    sscript = 'sscript',
  },
}

-- starting lsp
-- vim.lsp.start() both starts the client and attaches the current buffer.
-- It reuses a matching client (same name/cmd/root) so no duplicate servers spawn.
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sscript',
  callback = function()
    vim.lsp.start {
      name = 'trying_lsp',
      cmd = { '/Users/chaitanyasura/Projects/RustServer/target/debug/rust_server' },
    }
  end,
})

return {}
