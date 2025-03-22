return {
  "nvim-telescope/telescope-bibtex.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("bibtex")
    vim.keymap.set("n", "<leader>fl", ":Telescope bibtex<CR>", {})
  end,
}
