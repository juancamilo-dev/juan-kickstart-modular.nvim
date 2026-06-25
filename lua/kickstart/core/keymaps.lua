local map = vim.keymap.set 
local opts = { noremap = true, silent = true }

-- Lider 
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Copiar una linea sin el salto de linea final
map("n", "<leader>y", '0"+y$', opts, { desc = "copiar 1 linea" })

-- Guardar / Salir
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Exit file" })

-- Limpiar búsqueda
map("n", "<leader><CR>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Navegación entre ventanas
map("n", "<C-h>", "<C-w>h", opts, { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", opts, { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", opts, { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", opts, { desc = "Go to right window" })

-- Resaltar al copiar 
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	callback = function()
		vim.hl.hl_op()
	end,
})

-- Redimensionar ventanas
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase width" })
map("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease height" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase height" })

-- Moverse en el búfer de archivos
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

-- Pick buffer (menu interactivo para saltar a otro buffer
map("n", "<leader>bb", ":BufferLinePick<CR>", { desc = "Delete buffer" })

-- NeoTree
map("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle neo-tree" })

-- Cambiar tema con atajos
vim.keymap.set("n", "<leader>tt", function() vim.cmd("colorscheme tokyonight") end, { desc = "Tema Tokyonight" })
vim.keymap.set("n", "<leader>tc", function() vim.cmd("colorscheme catppuccin") end, { desc = "Tema Catppuccin" })
vim.keymap.set("n", "<leader>tk", function() vim.cmd("colorscheme kanagawa") end, { desc = "Tema Kanagawa" })

