return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    require("todo-comments").setup({})
  end,
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "➡️ Next todo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "⬅️ Previous todo comment" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "🧨 Todo with Trouble" },
    { "<leader>xT", "<cmd>TodoTelescope<cr>", desc = "🔍 Todo with Telescope" },
  },
}
