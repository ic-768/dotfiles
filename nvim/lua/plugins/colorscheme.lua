return {
  {
    'f4z3r/gruvbox-material.nvim',
    lazy = false,
    name = 'gruvbox-material',
    opts = {},
    priority = 1000, -- load this before all the other start plugins
    config = function()
      vim.cmd([[colorscheme gruvbox-material]])

      require('gruvbox-material').setup({
        contrast = "hard"
      })
    end,
  },
}
