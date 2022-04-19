-- Telescope configuration
local telescope = require('telescope')
local set_keymap = vim.keymap.set

telescope.load_extension('fzf')

set_keymap(
  'n',
  '<leader>f',
  '<cmd>lua require("telescope").extensions.live_grep_raw.live_grep_raw()<cr>',
  {noremap = true}
)
set_keymap('n', '<leader>o', '<cmd>lua require("telescope.builtin").find_files()<cr>',   {noremap = true})
set_keymap('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>',      {noremap = true})
set_keymap('n', '<leader>p', '<cmd>lua require("telescope.builtin").commands()<cr>',     {noremap = true})
set_keymap('n', '<leader>q', '<cmd>lua require("telescope.builtin").quickfix()<cr>',     {noremap = true})
set_keymap('n', '<leader>g', '<cmd>lua require("telescope.builtin").git_status()<cr>',   {noremap = true})
set_keymap('n', '<leader>l', '<cmd>lua require("telescope.builtin").loclist()<cr>',      {noremap = true})
set_keymap('n', '<F1>',      '<cmd>lua require("telescope.builtin").help_tags()<cr>',    {noremap = true})

