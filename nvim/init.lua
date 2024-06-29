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

require('telescope').setup {
	defaults={
	  file_ignore_patterns = { "node_modules" }
	}
}


vim.keymap.set('n', '<Backspace>', '<C-^>', { noremap = true, silent = true })

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', telescope.resume, {})
vim.keymap.set('n', '<leader>f', telescope.find_files, {})
vim.keymap.set('n', '<leader>r', telescope.registers, {})
vim.keymap.set('n', '<leader>t', telescope.live_grep, {})
vim.keymap.set('n', '<leader>g', telescope.git_status, {})
vim.keymap.set('n', '<leader>b', telescope.buffers, {})

-- harpoon
vim.keymap.set('n', '<Leader>s', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>w', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-g>', ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = true })


-- codeium
vim.keymap.set('i', '<script><silent><nowait><expr> <tab>', 'codeium#Accept()', { silent = true, nowait = true, expr = true })
vim.keymap.set('i', '<script><silent><nowait><expr> <C-i>', 'codeium#AcceptNextWord()', { silent = true, nowait = true, expr = true })
vim.keymap.set('i', '<script><silent><nowait><expr> <C-l>', 'codeium#AcceptNextLine()', { silent = true, nowait = true, expr = true })
vim.keymap.set('i', '<C-s>', '<Cmd>call codeium#CycleCompletions(1)<CR>', { silent = true })
vim.keymap.set('i', '<C-a>', '<Cmd>call codeium#CycleCompletions(-1)<CR>', { silent = true })
vim.keymap.set('i', '<C-x>', '<Cmd>call codeium#Clear()<CR>', { silent = true })
vim.g.codeium_filetypes_disabled_by_default = true
vim.g.codeium_filetypes = {
    typescript = true,
    javascript = true,
    javascriptreact = true,
    typescriptreact = true,
    python = true
}
vim.cmd([[set statusline+=%3{codeium#GetStatusString()}\ %F]])

-- Smooth scroll TODO doesn't work
vim.keymap.set('n', '<silent> <C-u>', ':lua require("smooth_scroll").up(vim.o.scroll, 20, 2)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-d>', ':lua require("smooth_scroll").down(vim.o.scroll, 20, 2)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-b>', ':lua require("smooth_scroll").up(vim.o.scroll * 2, 35, 4)<CR>', { silent = true })
vim.keymap.set('n', '<silent> <C-f>', ':lua require("smooth_scroll").down(vim.o.scroll * 2, 35, 4)<CR>', { silent = true })


-- Set Git Blame message template
vim.g.gitblame_message_template = '        <author> • <summary> • <date>'

-- Set Git Blame date format
vim.g.gitblame_date_format = '%r'
