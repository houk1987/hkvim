vim.g.mapleader=' '

local map = vim.keymap.set

map('i','jk','<esc>')
map({'n'},'<c-s>','<esc><cmd>w<cr>')
map({'n'},'<leader>q','<esc><cmd>q<cr>')
map('n','<leader>n','<cmd>bnext<cr>')
map('n','<leader>e','<cmd>NvimTreeToggle<cr>')
map('n','<F2>','<cmd>e $MYVIMRC<cr>')
map('n','<F5>','<cmd>!python %<cr>')
