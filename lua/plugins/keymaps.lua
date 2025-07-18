return {
  "nvim-lua/plenary.nvim",  -- အကယ်၍ dependency တစ်ခုအနေနဲ့သာဖြစ်တတ်တဲ့ plugin ဖြစ်လို့ လုံးဝအသုံးမပြုဘဲ ဖြစ်လို့ရပါသည်
  config = function()
    local keymap = vim.keymap  -- ဒီလို define လုပ်ပါ

    -- Better window movement
    keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
    keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
    keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below window" })
    keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above window" })

    -- Clear search highlight
    keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

    -- Window management
    keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
    keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
    keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
    keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

    -- Tab management
    keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
    keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
    keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
    keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
    keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Current buffer in new tab" })


        -- Visual Mode: H to move back a word, L to move forward a word
    vim.keymap.set("x", "H", "b", { noremap = true, silent = true })
    vim.keymap.set("x", "L", "e", { noremap = true, silent = true })



        -- Normal mode: Replace current word with input
    vim.keymap.set("n", "<leader>rw", "ciw", { desc = "Replace word under cursor" })

    -- Visual mode: Replace selection
    vim.keymap.set("v", "<leader>r", "c", { desc = "Replace selected text" })

    -- Normal mode: Shift+S ကို Visual Line Mode အစားထားမယ်
    vim.keymap.set("n", "S", "V", { noremap = true, silent = true })


    -- Explorer tree toggle
    keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

    -- Format buffer using conform plugin
    keymap.set("n", "<leader>cf", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })

    -- Exit insert mode with jk keys
    keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
  end,

-- ====================== Replace world function command line base 

   vim.keymap.set("v", "<leader>rw", function()
    local replacement = vim.fn.input("Replace with: ")
    if not replacement or replacement == "" then
      print("Cancelled")
      return
    end

    -- Delete selection and insert replacement
    -- Use feedkeys to send replacement + escape keys properly
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("c" .. replacement .. "<Esc>", true, false, true),
      "n",
      true
    )
    end, { noremap = true, silent = true, desc = "Replace visual selection with input" })
}
