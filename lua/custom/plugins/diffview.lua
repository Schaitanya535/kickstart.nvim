return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>Gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff view" },
    { "<leader>Gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File git history" },
    { "<leader>GH", "<cmd>DiffviewFileHistory<cr>", desc = "Branch git history" },
    { "<leader>Gq", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
  },
  opts = {},
}
