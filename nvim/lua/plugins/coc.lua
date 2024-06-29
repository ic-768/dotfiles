local M = {
  "neoclide/coc.nvim",
  branch = "master",
  build = "yarn install --frozen-lockfile",
}

M.config = function()
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
keyset('n', 'K', ':lua vim.fn.CocActionAsync("doHover")<CR>', { silent = true })
keyset('n', ':E', '<Cmd>CocCommand explorer<CR>', { silent = true })

keyset('i', '<C-k>', 'coc#refresh()', { silent = true, expr = true })
vim.keymap.set("n", "<C-k>", function()
  vim.api.nvim_feedkeys("viwoeA","n", false)
  vim.fn["coc#refresh"]()
end
)

keyset('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
keyset('n', '<leader>a', '<Plug>(coc-codeaction-selected)', {})

end

return M
