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
-- Deprecated in 0.11 (warns in 0.12): vim.lsp.start_client + vim.lsp.buf_attach_client
-- local client = vim.lsp.start_client {
--   cmd = { '/Users/chaitanyasura/Projects/RustServer/target/debug/rust_server' },
--   name = 'trying_lsp',
-- }
--
-- if not client then
--   vim.notify "hey your didn't do the client well"
--   return
-- end
--
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'sscript',
--   callback = function()
--     vim.lsp.buf_attach_client(0, client)
--     vim.notify 'Client started'
--   end,
-- })

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
