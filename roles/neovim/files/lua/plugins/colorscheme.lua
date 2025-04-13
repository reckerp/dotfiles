return {
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        vim.cmd("colorscheme gruvbox")
        -- Apply GruvboxDarkHard contrast
        vim.g.gruvbox_contrast_dark = "hard"
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        vim.cmd("colorscheme gruvbox")
        -- Normal light contrast
        vim.g.gruvbox_contrast_light = "medium"
      end,
    },
  },
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
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
