return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = true,
        custom = { ".git", "node_modules", ".cache" },
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        highlight_opened_files = "all",
        indent_markers = {
          enable = true,
          icons = {
            corner = "└ ",
            edge = "│ ",
            item = "├ ",
            none = "  ",
          },
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
          },
          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      git = {
        enable = true,
        ignore = true,
      },
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    })
      -- Cursor highlight styles =======

      vim.defer_fn(function()
      -- 💛 Folder Name (Yellow)
      vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#e0af68", bold = true })

      -- 💛 Opened Folder Name (Yellow)
      vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#e0af68", bold = true })

      -- ✅ Executable Files
      vim.api.nvim_set_hl(0, "NvimTreeExecFile", { fg = "#9ece6a", bold = true })

      -- ✅ Indent Marker
      vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#565f89" })

      -- ✅ Folder Icon 💛
      vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#6b7280" })

      -- ✅ Cursor highlight row 💙
      vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#6b7280" }) -- Blue light
    end, 100)

    -- CursorLine apply for NvimTree only
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "NvimTree",
      callback = function()
        vim.api.nvim_win_set_option(0, "winhighlight", "Normal:Normal,CursorLine:NvimTreeCursorLine")
      end,
    })
  end,
}
