-- Options.lua
local o = vim.opt

-- Numeros de linea
o.number = true
o.relativenumber = true

-- Tabulacion
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- Bascar
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Apariencia 
o.cursorline = true 
o.termguicolors = true
o.signcolumn = yes
o.scrolloff = 8
o.sidescrolloff = 8

-- Archivos
o.undofile = true
o.swapfile = false
o.backup = false

-- Portapapeles
o.clipboard:append("unnamedplus")

-- Dividir ventas
o.splitright = true
o.splitbelow = true

-- Menu de comandos 
o.wildmode = "list:longest,full"

-- Tiempo de espera keymaps
o.timeoutlen = 300
