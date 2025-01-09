return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    -- style = 'ascii',
    config = function()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }
    end
  }
}
