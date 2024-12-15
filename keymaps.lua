-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- Selecet all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymaps.set("n", "te", "tabedit", opts)
keymaps.set("n", "<tab>", ":tabnext<Return>", opts)
keymaps.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split windown
keymaps.set("n", "ss", ":split<Return>", opts)
keymaps.set("n", "sv", ":vsplit<Return>", opts)

-- Move windows
keymaps.set("n", "sh", "<C-w>h", opts)
keymaps.set("n", "sj", "<C-w>j", opts)
keymaps.set("n", "sk", "<C-w>k", opts)
keymaps.set("n", "sl", "<C-w>l", opts)

-- Resize  windows
keymaps.set("n", "<C-w><left>", "<C-W><left>")
keymaps.set("n", "<C-W><right>", "<C-W>>")
keymaps.set("n", "<C-W><up>", "<C-W>+")
keymaps.set("n", "<C-W><down>", "<C-W>-")

-- Close buffer
keymaps.set("n", "sq", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Diagnostics
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
