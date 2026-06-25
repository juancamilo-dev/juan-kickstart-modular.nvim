return {
  "akinsho/bufferline.nvim",
  version = "*", -- usa la última versión estable
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- muestra buffers abiertos
        numbers = "none", -- no mostrar números
        close_command = "bdelete! %d", -- comando para cerrar buffer
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          icon = "▎", -- indicador del buffer activo
          style = "icon",
        },
        buffer_close_icon = "✕",
        modified_icon = "●",
        close_icon = "✕",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = "nvim_lsp", -- muestra diagnósticos de LSP
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " " or (e == "warning" and " " or "")
            s = s .. sym .. n
          end
          return s
        end,
        custom_filter = function(buf_number, buf_numbers)
          -- filtro para no mostrar neo-tree, etc.
          local filetype = vim.bo[buf_number].filetype
          if filetype == "neo-tree" then
            return false
          end
          return true
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
      },
      highlights = {
        fill = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        background = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
          bold = true,
        },
        -- Puedes ajustar más colores según tu tema
      },
    })
  end,
}
