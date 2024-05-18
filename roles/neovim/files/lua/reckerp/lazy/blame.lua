return {
  'f-person/git-blame.nvim',

  config = function()
    require('gitblame').setup {
      enabled = false,
    }
    vim.keymap.set('n', '<leader>gb', function()
      require('git-blame').toggle()
    end)
  end,
}
