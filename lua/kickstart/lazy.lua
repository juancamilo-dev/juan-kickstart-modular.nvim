-- ~/.config/nvim/lua/kickstart/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Aquí importaremos todos los plugins de la carpeta plugins/
  spec = {
    { import = "kickstart.plugins" },
  },
  -- Configuración global de Lazy
  install = {
    colorscheme = { "tokyonight" }, -- tema por defecto
  },
  checker = {
    enabled = true, -- comprobar actualizaciones automáticamente
    notify = false, -- no mostrar notificaciones
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
