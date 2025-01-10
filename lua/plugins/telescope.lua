return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
      }
    },
    config = function()
      require('telescope').setup {
        defaults = require('telescope.themes').get_ivy(),
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      require('telescope').setup {
	defaults = {
	  file_ignore_patterns = {
	    "node_modules",
	    "build"
	  }
	}
      }

      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files, { desc = "find files" })
      vim.keymap.set("n", "<space>fr", require('telescope.builtin').lsp_references, { desc = "find references" })
      vim.keymap.set("n", "<space>fd", require('telescope.builtin').lsp_definitions, { desc = "find definition" })
      vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep, { desc = "grep" })
      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags, { desc = "help" })
      vim.keymap.set("n", "<space>eb", require('telescope.builtin').buffers, { desc = "buffers" })
      vim.keymap.set("n", "<space>en", function()
          require('telescope.builtin').find_files({
            cwd = vim.fn.stdpath("config")
          })
        end,
        {
          desc = "edit neovim configs"
        }
      )
    end
  }
}
