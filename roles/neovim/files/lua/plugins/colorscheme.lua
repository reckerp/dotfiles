return {
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    lazy = false,
    opts = {
      transparent_mode = true,
      italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = true,
        conditionals = true,
      },
      -- Plugin integration settings
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = true,
      },
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      -- Set default dark contrast to hard
      vim.g.gruvbox_contrast_dark = "hard"
      -- vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({
        -- optional configuration here
        transparent = true,
        variant = "dark",
        theme = "burzum",
      })
      require("black-metal").load()
    end,
  },
}
