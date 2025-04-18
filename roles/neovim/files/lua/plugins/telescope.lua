-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>sm",
      function()
        -- Define the telescope_functions inline
        require("telescope.builtin").treesitter()
      end,
      desc = "[S]earch [M]ethods",
    },
    -- You can keep your other telescope keybindings here if needed
  },
  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules/", "^vendor/", "vendor/*", "^venv/", "venv/*" },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
    extensions = {
      ["ui-select"] = { require("telescope.themes").get_dropdown() },
    },
  },
}
