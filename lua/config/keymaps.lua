-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  -- @cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>qw", "<cmd>wqa<cr>", { desc = "Save and quit all" })

map("n", "<leader>wt", "<cmd>up<cr><cmd>e term://fish<cr>a", { desc = "Save if applicable, and open terminal" })
map("t", "<esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
map("t", "<C-w><left>", "<C-\\><C-N><C-w>h", { desc = "Move to left window from terminal" })
map("t", "<C-w>h", "<C-\\><C-N><C-w>h", { desc = "Move to left window from terminal" })
map("t", "<C-w><down>", "<C-\\><C-N><C-w>j", { desc = "Move to bottom window from terminal" })
map("t", "<C-w>j", "<C-\\><C-N><C-w>j", { desc = "Move to bottom window from terminal" })
map("t", "<C-w><up>", "<C-\\><C-N><C-w>k", { desc = "Move to top window from terminal" })
map("t", "<C-w>k", "<C-\\><C-N><C-w>k", { desc = "Move to top window from terminal" })
map("t", "<C-w><right>", "<C-\\><C-N><C-w>l", { desc = "Move to right window from terminal" })
map("t", "<C-w>l", "<C-\\><C-N><C-w>l", { desc = "Move to right window from terminal" })
map("t", "<C-w>%", "<C-\\><C-N><C-w>sa", { desc = "Split window from terminal" })
map("t", "<C-w>s", "<C-\\><C-N><C-w>sa", { desc = "Split window from terminal" })
map("t", '<C-w>"', "<C-\\><C-N><C-w>va", { desc = "Split window vertically from terminal" })
map("t", "<C-w>v", "<C-\\><C-N><C-w>va", { desc = "Split window vertically from terminal" })
map("t", "<C-w>q", "<C-\\><C-N><C-w>q", { desc = "Close terminal" })
map("t", "<C-w>o", "<C-\\><C-N><C-w>o", { desc = "Close all other windows from termianl" })
map("t", "<C-w>w", "<C-\\><C-N><C-w>w", { desc = "Switch windows from terminal" })
map("t", "<C-w>x", "<C-\\><C-N><C-w>x", { desc = "Swap current with next from terminal" })
