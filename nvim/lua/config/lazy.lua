-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

local o = vim.opt
o.compatible = false
o.linebreak = true
o.breakindent = true
o.undofile = true
o.ignorecase = true
o.nu = true
o.visualbell = true
o.clipboard = unnamedplus
o.tabstop = 2
o.shiftwidth = 2
o.mouse = a
o.ve = all --freely move cursor
o.relativenumber = true
o.expandtab = true

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
})
