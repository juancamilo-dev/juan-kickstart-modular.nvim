return {
  -- Tema principal: Catppuccin (se carga al inicio y se aplica)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,        -- se carga al inicio
    priority = 1000,     -- prioridad alta para que se cargue antes
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",   -- "latte", "frappe", "macchiato", "mocha"
        transparent_background = false,
      })
      vim.cmd("colorscheme catppuccin")  -- <--- aplicar aquí
    end,
  },

  -- Tema alternativo: Tokyonight (no se aplica automáticamente)
  {
    "folke/tokyonight.nvim",
    lazy = true,          -- solo se carga cuando se necesite
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
      })
      -- NO ejecutar vim.cmd aquí
    end,
  },

  -- Tema alternativo: Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    config = function()
      require("kanagawa").setup({
        theme = "wave",
      })
      -- NO ejecutar vim.cmd aquí
    end,
  },
}

