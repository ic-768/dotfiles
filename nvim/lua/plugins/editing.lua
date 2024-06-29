return {
  {
    "ntpeters/vim-better-whitespace",
    lazy = false,
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
    },
  } ,
  {
    'nvim-treesitter/nvim-treesitter-context',
    lazy=false
  },
  {
    'tpope/vim-surround',
    lazy=false,
  },
  {
    'terryma/vim-smooth-scroll',
    lazy=false,
  },
  {
    'ap/vim-css-color',
    lazy = false
  }
}
