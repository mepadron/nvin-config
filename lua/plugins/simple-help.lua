-- Plugin simple de ayuda para keybindings (sin which-key)
return {
  -- Comando personalizado para mostrar todos los keybindings
  {
    dir = vim.fn.stdpath("config"),
    name = "keybindings-help",
    config = function()
      -- Comando personalizado para mostrar todos los keybindings
      vim.api.nvim_create_user_command('ShowKeybindings', function()
        local buf = vim.api.nvim_create_buf(false, true)
        local win = vim.api.nvim_open_win(buf, true, {
          relative = 'editor',
          width = math.floor(vim.o.columns * 0.9),
          height = math.floor(vim.o.lines * 0.9),
          col = math.floor(vim.o.columns * 0.05),
          row = math.floor(vim.o.lines * 0.05),
          style = 'minimal',
          border = 'rounded',
          title = ' 🔥 Mis Keybindings de Neovim 🔥 ',
          title_pos = 'center'
        })

        local keybindings = {
          "═══════════════════════════════════════════════════════════════════════════════",
          "🚀                    KEYBINDINGS DE TU CONFIGURACIÓN NEOVIM                🚀",
          "═══════════════════════════════════════════════════════════════════════════════",
          "",
          "📁 TELESCOPE (Búsqueda de archivos)",
          "  Ctrl+p              → Buscar archivos",
          "  <leader>fg          → Búsqueda en vivo (grep)",
          "  <leader><leader>    → Archivos recientes",
          "",
          "🌳 NEO-TREE (Explorador de archivos)",
          "  Ctrl+n              → Toggle árbol de archivos",
          "  <leader>bf          → Buffers flotantes",
          "  Dentro del árbol:",
          "    Enter/o/t         → Abrir en nueva pestaña",
          "    s                 → Split horizontal",
          "    v                 → Split vertical",
          "    w                 → Open with window picker",
          "",
          "📝 LSP (Language Server Protocol)",
          "  K                   → Mostrar documentación (hover)",
          "  <leader>gd          → Ir a definición",
          "  <leader>gr          → Mostrar referencias",
          "  <leader>ca          → Acciones de código",
          "",
          "📂 PESTAÑAS/TABS (Navegación tradicional)",
          "  <leader>tn          → Nueva pestaña",
          "  <leader>tc          → Cerrar pestaña",
          "  <leader>to          → Cerrar otras pestañas",
          "  <leader>1-9         → Ir a pestaña específica (1-9)",
          "  Ctrl+Tab            → Siguiente pestaña",
          "  Ctrl+Shift+Tab      → Pestaña anterior",
          "",
          "📋 BARBAR (Gestión avanzada de buffers)",
          "  Alt+,               → Buffer anterior",
          "  Alt+.               → Buffer siguiente",
          "  Alt+<               → Mover buffer a la izquierda",
          "  Alt+>               → Mover buffer a la derecha",
          "  Alt+1-9             → Ir a buffer específico (1-9)",
          "  Alt+0               → Ir al último buffer",
          "  Alt+p               → Pin/unpin buffer",
          "  Alt+c               → Cerrar buffer actual",
          "  Alt+w               → Eliminar buffer completamente",
          "  Alt+Ctrl+c          → Cerrar todos excepto actual",
          "  Alt+Ctrl+p          → Cerrar todos excepto pinned",
          "  Alt+Ctrl+l          → Cerrar buffers a la izquierda",
          "  Alt+Ctrl+r          → Cerrar buffers a la derecha",
          "  <leader>bb          → Ordenar por número de buffer",
          "  <leader>bd          → Ordenar por directorio",
          "  <leader>bl          → Ordenar por lenguaje",
          "  <leader>bw          → Ordenar por número de ventana",
          "",
          "🪟 VENTANAS (Window navigation)",
          "  Ctrl+k              → Ir a ventana de arriba",
          "  Ctrl+j              → Ir a ventana de abajo",
          "  Ctrl+h              → Ir a ventana de la izquierda",
          "  Ctrl+l              → Ir a ventana de la derecha",
          "",
          "🔍 BÚSQUEDA Y UTILIDADES",
          "  <leader>h           → Quitar resaltado de búsqueda",
          "",
          "💡 COMANDOS ÚTILES DE NEOVIM:",
          "  :ShowKeybindings    → Mostrar esta ayuda (también <leader>? o F1)",
          "  :Telescope keymaps  → Ver todos los mapeos con Telescope",
          "  :map                → Ver todos los mapeos",
          "  :map <leader>       → Ver mapeos que empiecen con leader",
          "  :nmap               → Ver mapeos en modo normal",
          "  :imap               → Ver mapeos en modo inserción",
          "  :vmap               → Ver mapeos en modo visual",
          "",
          "🎯 ACCESOS RÁPIDOS A ESTA AYUDA:",
          "  <leader>?           → Mostrar esta ventana",
          "  F1                  → Mostrar esta ventana",
          "",
          "═══════════════════════════════════════════════════════════════════════════════",
          "                    Presiona 'q' o 'Esc' para cerrar esta ventana",
          "═══════════════════════════════════════════════════════════════════════════════",
          "",
          "NOTA: <leader> = Espacio en tu configuración",
        }

        vim.api.nvim_buf_set_lines(buf, 0, -1, false, keybindings)
        vim.bo[buf].modifiable = false
        vim.bo[buf].filetype = 'help'
        
        -- Syntax highlighting personalizado
        vim.api.nvim_buf_set_option(buf, 'syntax', 'on')
        
        -- Keybindings para cerrar la ventana
        vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>close<cr>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', '<cmd>close<cr>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(buf, 'n', '<CR>', '<cmd>close<cr>', {noremap = true, silent = true})
      end, { desc = 'Show all keybindings help' })

      -- Keybindings para abrir la ayuda rápidamente
      vim.keymap.set('n', '<leader>?', '<cmd>ShowKeybindings<cr>', { desc = 'Show Keybindings Help', silent = true })
      vim.keymap.set('n', '<F1>', '<cmd>ShowKeybindings<cr>', { desc = 'Show Keybindings Help', silent = true })
      
      -- Comando adicional para mostrar solo comandos básicos
      vim.api.nvim_create_user_command('ShowBasicKeys', function()
        print("=== COMANDOS BÁSICOS ===")
        print("Ctrl+p      → Buscar archivos")
        print("Ctrl+n      → Toggle árbol")
        print("<leader>?   → Ayuda completa")
        print("F1          → Ayuda completa")
        print("Alt+,/.     → Cambiar buffer")
        print("<leader>gd  → Ir a definición")
        print("K           → Documentación")
      end, { desc = 'Show basic keybindings in command line' })
      
    end,
  }
}
