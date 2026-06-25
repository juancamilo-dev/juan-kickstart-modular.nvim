return {
  "nvim-tree/nvim-web-devicons",
  lazy = true, -- se carga cuando otro plugin lo necesite
  config = function()
    require("nvim-web-devicons").setup({
      -- Configuración por defecto, no requiere nada extra
      -- Pero puedes personalizar colores o íconos si quieres
    })
  end,
}
