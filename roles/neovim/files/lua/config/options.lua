-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- Disable horizontal scrolling
vim.opt.mousescroll = "ver:3,hor:0"

-- Map horizontal scroll wheel to no operation
vim.keymap.set("", "<ScrollWheelLeft>", "<Nop>", { silent = true })
vim.keymap.set("", "<ScrollWheelRight>", "<Nop>", { silent = true })

vim.g.lazyvim_picker = "telescope"
