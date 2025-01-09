require("config.lazy")

-- bug workaround
vim.hl = vim.highlight

-- default tab size
vim.opt.shiftwidth = 4;
-- allow clipboard pasting
vim.opt.clipboard = "unnamedplus"

-- customizing syntax colours
-- vim.cmd [[hi @function.builtin.lua guifg=red]]
-- customizing for all languages
-- vim.cmd [[hi @function.builtin guifg=red]]

-- keymappings for sourcing and running lua files
-- source current file
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", { desc = "source current file" })
-- run the current line in normal mode
vim.keymap.set("n", "<space>x", ":.lua<CR>", { desc = "run the current line (lua)" })
-- run the selected lines of code in visual mode
vim.keymap.set("v", "<space>x", ":lua<CR>", { desc = "run the selected lines" })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
