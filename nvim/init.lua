local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local keyopts = { silent = true, remap = false }
vim.keymap.set("n", "<Space>", "<Nop>", keyopts)
vim.keymap.set('n', '<A-,>', '<Cmd>BufferLineCyclePrev<CR>', keyopts)
vim.keymap.set('n', '<A-.>', '<Cmd>BufferLineCycleNext<CR>', keyopts)
vim.g.mapleader = " "
vim.opt.smartcase = true
require("lazy").setup("plugins")
