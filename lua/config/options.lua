-- options.lua - Vim options

-- Set <leader> key before plugins load
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Use true color support (for terminals that support it)
vim.opt.termguicolors = true

-- Line numbers
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Relative line numbers

-- Tabs & indentation
vim.opt.tabstop = 2              -- A tab is two spaces
vim.opt.shiftwidth = 2           -- Indentation width
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.smartindent = true       -- Smart indentation

-- Line wrapping
vim.opt.wrap = false             -- Disable line wrap

-- Search settings
vim.opt.ignorecase = true        -- Ignore case when searching
vim.opt.smartcase = true         -- But case-sensitive if uppercase used

-- Cursor line
vim.opt.cursorline = true        -- Highlight current line

-- Appearance
vim.opt.signcolumn = "yes"       -- Always show sign column
vim.opt.scrolloff = 8            -- Minimum lines to keep above/below cursor

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Splits
vim.opt.splitright = true        -- Vertical split to the right
vim.opt.splitbelow = true        -- Horizontal split below

-- Mouse support
vim.opt.mouse = "a"

-- Undo & backup
vim.opt.undofile = true          -- Persistent undo
vim.opt.swapfile = false         -- No swap file
vim.opt.backup = false           -- No backup file

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Completion menu
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Better display for messages
vim.opt.cmdheight = 1
vim.opt.laststatus = 3           -- Global statusline

-- Don't show mode (e.g. -- INSERT --)
vim.opt.showmode = false

vim.opt.lazyredraw = true -- scrolling smooth
vim.opt.updatetime = 300  -- faster response
vim.opt.timeoutlen = 300  -- keymap timeout reduce