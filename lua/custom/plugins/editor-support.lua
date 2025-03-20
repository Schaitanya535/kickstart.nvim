return {
  'https://git.sr.ht/~nedia/auto-save.nvim',
  event = { 'BufReadPre' },
  opts = {
    events = { 'BufLeave', 'InsertLeave' },
    silent = false,
    exclude_ft = { 'neo-tree' },
  },
}
