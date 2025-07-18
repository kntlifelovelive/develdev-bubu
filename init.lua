-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load options
require("config.options")
require("config.autocmds")
require("plugins.autopairs")


-- Setup Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugins from lua/plugins/
require("lazy").setup({
  { import = "plugins" },
})

vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("lazy").setup({
  { import = "plugins" },
})
