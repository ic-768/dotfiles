local M = {
  "neoclide/coc.nvim",
  branch = "master",
  build = "yarn install --frozen-lockfile",
}

M.config = function()
 -- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set

keyset('n', 'gd', '<Plug>(coc-definition)', { silent = true })
keyset('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
keyset('n', '<Leader>i', '<Plug>(coc-implementation)', { silent = true })
keyset('n', 'gr', '<Plug>(coc-references)', { silent = true })
keyset('n', 'g]', '<Plug>(coc-diagnostic-next)', { silent = true })
keyset('n', 'g[', '<Plug>(coc-diagnostic-prev)', { silent = true })
keyset('n', 'gs', '<Plug>(coc-rename)', { silent = true })

-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

vim.api.nvim_set_keymap('n', 'K', ':lua vim.fn.CocActionAsync("doHover")<CR>', { silent = true })
vim.keymap.set('i', '<C-k>', 'coc#refresh()', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', ':E', '<Cmd>CocCommand explorer<CR>', { silent = true })

-- TODO this isn't working
vim.api.nvim_set_keymap('n', '<silent> <C-k>', ':viwo<CR>:normal ea<C-k><CR>', {silent=true})
end

vim.api.nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-selected)', {})


return M
