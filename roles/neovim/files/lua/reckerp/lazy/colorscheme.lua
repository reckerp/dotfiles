return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  {
    'f-person/auto-dark-mode.nvim',
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option('background', 'dark')
        vim.cmd 'colorscheme tokyonight'
      end,
      set_light_mode = function()
        vim.api.nvim_set_option('background', 'light')
        vim.cmd 'colorscheme tokyonight-day'
      end,
    },
  },
  {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('tokyonight').setup {
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
      -- Load the colorscheme here
      -- vim.cmd.colorscheme 'tokyonight'
      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'shaunsingh/nord.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   -- Load the colorscheme here
    --   vim.cmd.colorscheme 'nord'
    --  -- Background transparency with nord scheme
    -- vim.g.nord_disable_background = true
    --   -- You can configure highlights by doing something like
    --   vim.cmd.hi 'Comment gui=none'
    -- end,
  },
}
