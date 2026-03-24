return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    suppressed_dirs = { "~/", "~/Downloads", "/tmp/" },
  },
  keys = {
    { "<leader>ss", "<cmd>SessionSearch<CR>", desc = "Search sessions" },
    { "<leader>sd", "<cmd>Autosession delete<CR>", desc = "Delete session" },
  },
}
