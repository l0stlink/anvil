local set_keymap = vim.keymap.set
local pumvisible = vim.fn.pumvisible
local options = { noremap = true }

-- Use semicolon to enter command mode
set_keymap('n',';', ':', options)
-- Use CTRL + j/k for fast scroll
set_keymap('n', '<C-k>', '<C-u>', options)
set_keymap('n', '<C-j>', '<C-d>', options)

-- Paste from & copy to system clipboard
set_keymap('n', ',p', '"+p', options)
set_keymap('v', ',y', '"+y', options)
set_keymap('n', ',y', '"+y', options)
set_keymap('x', '<leader>p', '"_dP', options)
-- Yank current line to system clipboard
-- Paste in visual mode and retain past
set_keymap('n', ',yy', '"+yy', options)
-- Trim trailing whitespace
set_keymap('n', ',s', '<CMD>%s/\\s\\+$//e<CR>')
-- Use ALT + q/l for opening quickfix and loclist
set_keymap('n', '<A-q>', '<CMD>cope<CR>', options)
set_keymap('n', '<A-l>', '<CMD>cope<CR>', options)
-- Fast * list navigation, inspired by tpope/vim-unimpaired
-- [ / ] -> previous / next, Uppercase Modifier -> First / Last
-- Quickfix list navigation<CMD>
set_keymap('n', '[q', '<CMD>cprev<CR>', options)
set_keymap('n', ']q', '<CMD>cnext<CR>', options)
set_keymap('n', '[Q', '<CMD>cfirst<CR>', options)
set_keymap('n', ']Q', '<CMD>clast<CR>', options)
-- Location list navigation
set_keymap('n', '[l', '<CMD>lprev<CR>', options)
set_keymap('n', ']l', '<CMD>lnext<CR>', options)
set_keymap('n', '[L', '<CMD>lfirst<CR>', options)
set_keymap('n', ']L', '<CMD>llast<CR>', options)
-- Buffer list navigation
set_keymap('n', '[b', '<CMD>bprev<CR>', options)
set_keymap('n', ']b', '<CMD>bnext<CR>', options)
set_keymap('n', '[B', '<CMD>bfirst<CR>', options)
set_keymap('n', ']B', '<CMD>blast<CR>', options)
set_keymap('n', ',b', '<CMD>bprev<CR>', options)
set_keymap('n', ',n', '<CMD>bnext<CR>', options)

-- Delete current buffer
set_keymap('n', ',c', '<CMD>bp|bd #<CR>', options)

-- Close current window
set_keymap('n', ',q', '<CMD>q<CR>', options)
-- Write changes made to open files
set_keymap('n', ',w', '<CMD>w<CR>', options)

-- -- Use ctrl+space for omnifunc
-- set_keymap('i', '<C-Space>', '<C-x><C-o>', options)
-- Use alt+space for completefunc
set_keymap('i', '<A-Space>', '<C-x><C-u>', options)

-- Move vertically by visual line
set_keymap('n', 'j', 'gj', options)
set_keymap('n', 'k', 'gk', options)

-- Keep cursor inplace while joining lines
set_keymap('n', 'J', 'mzJ`z', options)

-- Use Shift + J/K to moves selected lines up/down in visual mode
set_keymap('v', 'J', "<CMD>m '>+1<CR>gv=gv", options)
set_keymap('v', 'K', "<CMD>m '<-2<CR>gv=gv", options)

-- Keep current search result centered on the screen
set_keymap('n', 'n', 'nzz', options)
set_keymap('n', 'N', 'Nzz', options)

-- Keep current cursor position while entering and exiting insert mode
set_keymap('i', '<Esc>', function()
  return pumvisible() == 1 and '<Esc>i<Right>' or '<Right><Esc>'
end, { noremap = true, expr = true })

-- -- Use <Tab> to select next match
-- set_keymap('i', '<Tab>', function()
--   return pumvisible() == 1 and '<C-N>' or '<Tab>'
-- end, { noremap = true, expr = true })
-- -- Use <S-Tab> to select previous match
-- set_keymap('i', '<S-Tab>', function()
--   return pumvisible() == 1 and '<C-P>' or '<S-Tab>'
-- end, { noremap = true, expr = true })

-- Use <C-w> to move between terminal buffer and other buffers
set_keymap('t', '<C-w>', '<C-\\><C-n><C-w>', options)

