return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    lazy = false,

    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,

        filesystem = {
          follow_current_file = {
            enabled = true,
          },

          hijack_netrw_behavior = "open_default",
          use_libuv_file_watcher = true,
          filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = true,

            hide_by_name = {
              ".git",
              ".DS_Store",
              "node_modules",
              "__pycache__",
              ".venv",
            },
          },

          window = {
            position = "left",
            width = 28,

            mappings = {
              -- Los keymaps generales los manejas fuera
              ["<space>"] = "none",
            },
          },
        },

        buffers = {
          follow_current_file = {
            enabled = true,
          },
          group_empty_dirs = true,
        },

        git_status = {
          window = {
            position = "float",
          },
        },

        window = {
          position = "left",
          width = 28,
          mappings = {
            ["<space>"] = "none",
          },
        },


        default_component_configs = {

          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            default = "",
          },

          modified = {
            symbol = "●",
          },

          git_status = {
            symbols = {
              added = "✚",
              modified = "",
              deleted = "✖",
              renamed = "󰁕",
              untracked = "",
              ignored = "",
              unstaged = "󰄱",
              staged = "",
              conflict = "",
            },
          },
        },
      })
    end,
  },
}
