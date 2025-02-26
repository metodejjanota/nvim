local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" }, -- Tohle zajistí, že Lazy načte všechny soubory v `lua/plugins/`
  },
  install = { colorscheme = { "tokyonight" } }, -- Opraveno
  checker = { enabled = true },
})
