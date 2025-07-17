return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          preview_width = 0.5,
        },
        sorting_strategy = "ascending",
        prompt_prefix = "🔍 ",
        selection_caret = " ",
      },
    })

    -- Keymaps
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "🔍 Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep,  { desc = "🔍 Live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "📄 Find buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "📚 Help tags" })
    vim.keymap.set("n", "<leader>fc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", { desc = "🛠 Config Files" })
    vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>",                        { desc = "🎛 Keymaps" })
    vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>",                       { desc = "📁 Recent Files" })
  end,
}
