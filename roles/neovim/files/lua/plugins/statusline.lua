return {
  -- disable lualine
  { "nvim-lualine/lualine.nvim", enabled = false },
  
  -- configure mini.statusline
  {
    "echasnovski/mini.statusline",
    version = false,
    opts = {
      -- customize content shown in statusline
      content = {
        active = function()
          local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
          local git = MiniStatusline.section_git({ trunc_width = 75 })
          local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
          local filename = MiniStatusline.section_filename({ trunc_width = 140 })
          local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
          local location = MiniStatusline.section_location({ trunc_width = 75 })

          return MiniStatusline.combine_groups({
            { hl = mode_hl, strings = { mode } },
            { hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics } },
            '%<', -- Mark general truncate point
            { hl = 'MiniStatuslineFilename', strings = { filename } },
            '%=', -- End left alignment
            { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
            { hl = mode_hl, strings = { location } },
          })
        end,
      },
      use_icons = true,
      set_vim_settings = true,
    },
    config = function(_, opts)
      require("mini.statusline").setup(opts)
    end,
  },
} 