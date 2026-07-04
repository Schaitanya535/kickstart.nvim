
return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  init = function()
    -- vim-herdr-navigation owns <C-hjkl> (see after/plugin/herdr_nav.lua).
    -- Disable this plugin's own maps; it stays for the $TMUX fallback path.
    vim.g.tmux_navigator_no_mappings = 1
  end,
}
