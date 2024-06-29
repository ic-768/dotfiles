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
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    lazy=false,
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'ThePrimeagen/harpoon',
    lazy=false
  },
  {
    'Exafunction/codeium.vim', branch='main',
    lazy=false
  },
  {
    'tpope/vim-surround',
    lazy=false,
  },
  {
    'tpope/vim-fugitive',
    lazy=false,
  },
  {
    'terryma/vim-smooth-scroll',
    lazy=false,
  }
  ,
  {
    'f-person/git-blame.nvim',
    lazy = false
  },
  {
    'ap/vim-css-color',
    lazy = false

  }


}
