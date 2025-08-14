vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Tab configuration (like VSCode)
vim.o.showtabline = 2  -- Always show tab line
vim.o.tabpagemax = 50  -- Maximum number of tab pages

-- Tab navigation keymaps
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { desc = 'Close other tabs' })
vim.keymap.set('n', '<C-Tab>', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<C-S-Tab>', ':tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader>1', '1gt', { desc = 'Go to tab 1' })
vim.keymap.set('n', '<leader>2', '2gt', { desc = 'Go to tab 2' })
vim.keymap.set('n', '<leader>3', '3gt', { desc = 'Go to tab 3' })
vim.keymap.set('n', '<leader>4', '4gt', { desc = 'Go to tab 4' })
vim.keymap.set('n', '<leader>5', '5gt', { desc = 'Go to tab 5' })
vim.keymap.set('n', '<leader>6', '6gt', { desc = 'Go to tab 6' })
vim.keymap.set('n', '<leader>7', '7gt', { desc = 'Go to tab 7' })
vim.keymap.set('n', '<leader>8', '8gt', { desc = 'Go to tab 8' })
vim.keymap.set('n', '<leader>9', '9gt', { desc = 'Go to tab 9' })

