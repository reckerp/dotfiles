return {
  { 'github/copilot.vim' },
  { 'wakatime/vim-wakatime' },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()
      -- REQUIRED

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():append()
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-n>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-s>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },
  {
    'lervag/vimtex',
    config = function()
      vim.g.vimtex_view_general_viewer = 'zathura'
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_quickfix_mode = 0

      -- keymap
      vim.keymap.set('n', '<leader>lb', ':VimtexCompile<CR>')
    end,
  },
  {
    'nvim-telescope/telescope-bibtex.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telescope').load_extension 'bibtex'
      vim.keymap.set('n', '<leader>sl', ':Telescope bibtex<CR>', {})
    end,
  },
  { 'mbbill/undotree' },
  {
    'davidgranstrom/nvim-markdown-preview',
    config = function()
      vim.keymap.set('n', '<leader>mb', ':MarkdownPreview github<CR>')
    end,
  },
  {
    'anurag3301/nvim-platformio.lua',
    dependencies = {
      { 'akinsho/nvim-toggleterm.lua' },
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
  },
}
