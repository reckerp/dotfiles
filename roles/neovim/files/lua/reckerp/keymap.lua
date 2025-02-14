vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- GoLang specific keymaps
vim.keymap.set('n', '<leader>gt', ':!go test -v -cover ./...<CR>')

-- search and replace
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Open NetRW
vim.keymap.set('n', '<leader>n', ':Explore<CR>', { desc = 'Open netrw' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Define a Lua function that runs gcc on the current file
vim.keymap.set('n', '<leader>cgc', function()
  -- Save the current file
  vim.api.nvim_command 'w'

  local current_file = vim.api.nvim_buf_get_name(0) or ':No File Name:'

  -- Build the command with escape sequences
  local command = '!gcc ' .. current_file .. ' && ./a.out\n'

  -- Use :execute for seamless integration with the Neovim console
  vim.api.nvim_command(command)
end, { silent = false })

-- Copilot shortcuts
vim.keymap.set('n', '<leader>cpe', '<cmd>Copilot enable<CR>', { silent = false })
vim.keymap.set('n', '<leader>cpd', '<cmd>Copilot disable<CR>', { silent = false })

-- Terminal shortcuts
vim.api.nvim_set_keymap('n', '<leader>t', ':sp | term<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>q', [[<C-\><C-n>:q<CR>]], { noremap = true, silent = true })
