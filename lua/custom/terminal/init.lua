local M = {}

function M.toggleTerminal()
  local term_bufnr = nil

  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[bufnr].buftype == 'terminal' then
      term_bufnr = bufnr
      break
    end
  end

  if term_bufnr then
    for _, winid in ipairs(vim.api.nvim_list_wins()) do
      if vim.api.nvim_win_get_buf(winid) == term_bufnr then
        vim.api.nvim_set_current_win(winid)
        return
      end
    end
    vim.cmd('sb ' .. term_bufnr)
  else
    -- If no terminal, open a new one
    vim.cmd 'split | terminal'
    vim.cmd 'resize 15'
  end
end

return M
