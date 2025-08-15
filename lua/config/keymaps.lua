-- Mapeos de teclado personalizados
local keymap = vim.keymap

-- Guardar archivo con Ctrl + S
keymap.set('n', '<C-s>', ':w<CR>', { silent = true, desc = 'Guardar archivo' })
keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { silent = true, desc = 'Guardar archivo' })
keymap.set('v', '<C-s>', '<Esc>:w<CR>', { silent = true, desc = 'Guardar archivo' })

-- Mensaje de confirmación
print('Keymaps cargados: Usa Ctrl + S para guardar archivos')
