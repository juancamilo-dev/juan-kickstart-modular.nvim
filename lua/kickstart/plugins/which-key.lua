return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- se carga cuando el editor está inactivo
  dependencies = {
    "echasnovski/mini.icons", -- o "nvim-tree/nvim-web-devicons"
  },
  opts = {
    -- Configuración visual del popup
    win = {
      border = "rounded", -- bordes redondeados
    },
    -- Puedes añadir más opciones si quieres
    -- layout = { align = "center" },
    -- preset = "modern",
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    -- No necesitas wk.add() aquí, porque which-key leerá los keymaps con desc
  end,
}
