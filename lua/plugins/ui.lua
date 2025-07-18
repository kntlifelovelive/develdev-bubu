-- ~/.config/nvim/lua/plugins/ui.lua (သို့) plugins.lua
return {
  {
    "SmiteshP/nvim-navic",
    config = function()
      require("nvim-navic").setup {
        highlight = true,
        separator = " > ",
        depth_limit = 5,
        depth_limit_indicator = "..",
      }
    end,
  },
}
