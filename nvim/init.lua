require("config.lazy")
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.keymap.set('n', '<Backspace>', '<C-^>', { noremap = true, silent = true })

-- Smooth scroll TODO doesn't work
vim.keymap.set('n', '<silent> <C-u>', ':lua require("smooth_scroll").up(vim.o.scroll, 20, 2)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-d>', ':lua require("smooth_scroll").down(vim.o.scroll, 20, 2)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-b>', ':lua require("smooth_scroll").up(vim.o.scroll * 2, 35, 4)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-f>', ':lua require("smooth_scroll").down(vim.o.scroll * 2, 35, 4)<CR>', { silent = true })

