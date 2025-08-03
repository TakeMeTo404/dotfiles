return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function ()
      require('telescope').setup{
        defaults = {
          file_ignore_patterns = {
            "node_modules/",
            "%.git/",
            "build/",
            "dist/",
            "%.log",
            "__pycache__/",
            "%.xlsx",
            "%.jpg",
            "%.png",
            "%.DS_Store"
          },
          hidden = true               -- Show hidden files by default
        },
        pickers = {
          find_files = {
            hidden = true,               -- Show hidden files by default
            no_ignore = true,          -- Include files ignored by .gitignore
          },
          buffers = {
            initial_mode = 'normal', -- normal mode after open, so hjkl-navigation working
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
          }
        }
      }

      require('telescope').load_extension('fzf')

      local builtin = require('telescope/builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files)
      vim.keymap.set('n', '<leader>fg', builtin.live_grep)
      vim.keymap.set('n', '<leader>fb', builtin.buffers)
      vim.keymap.set('n', '<leader>fh', builtin.help_tags)
      vim.keymap.set('n', '<leader>ft', builtin.current_buffer_fuzzy_find)
      vim.keymap.set('n', '<leader>ey', function () 
        builtin.find_files {
          cwd = '~/.config/yazi'
        }
      end)
      vim.keymap.set('n', '<leader>en', function () 
        builtin.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
    end
}
