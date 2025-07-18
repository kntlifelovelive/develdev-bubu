return {
  "windwp/nvim-ts-autotag",
  -- ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact" },
  ft = {
  "html",
  "xml",
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "svelte",
  "vue",
  "php",
  "markdown"
},
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
