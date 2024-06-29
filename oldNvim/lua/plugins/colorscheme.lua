return {
  -- the colorscheme should be available when starting Neovim
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- load this during startup
    priority = 1000, -- load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
}
