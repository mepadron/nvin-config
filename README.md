# Configuración de Neovim

Esta es una configuración de Neovim moderna y completa, diseñada para ser rápida, extensible y potente. Utiliza `lazy.nvim` para la gestión de plugins y está escrita completamente en Lua.

## Características Principales

La configuración viene con una cuidada selección de plugins para ofrecer una experiencia de desarrollo completa:

- **Gestor de Plugins:** [lazy.nvim](https://github.com/folke/lazy.nvim) para una carga perezosa y un rendimiento óptimo.
- **Tema Visual:** [Catppuccin](https://github.com/catppuccin/nvim) como tema de colores principal.
- **Interfaz de Usuario:**
  - **Pantalla de Inicio:** [alpha.nvim](https://github.com/goolord/alpha-nvim) para un dashboard de bienvenida.
  - **Línea de Pestañas/Búferes:** [barbar.nvim](https://github.com/romgrk/barbar.nvim) para una gestión avanzada de búferes.
  - **Explorador de Archivos:** [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) como explorador de archivos principal y [oil.nvim](https://github.com/stevearc/oil.nvim) para navegar directorios como si fueran un búfer.
  - **Ayuda de Atajos:** [which-key.nvim](https://github.com/folke/which-key.nvim) para mostrar los atajos de teclado disponibles.
- **Edición y Productividad:**
  - **Búsqueda Fuzzy:** [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) para buscar archivos, texto, commits y más.
  - **Autocompletado:** Configuración de autocompletado a través de `completions.lua` (probablemente [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)).
  - **Resaltado de Sintaxis:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) para un resaltado de sintaxis más preciso e inteligente.
  - **Linting y Formateo:** [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) para integrar linters y formateadores.
- **Integración con Herramientas:**
  - **LSP:** Configuración para el Language Server Protocol a través de `lsp-config.lua` ([nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)).
  - **Git:** Integración con [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) y otras utilidades de git.
  - **Depuración:** Soporte para el Debug Adapter Protocol (DAP) a través de `dap.lua`.
  - **Tests:** Integración con [vim-test](https://github.com/vim-test/vim-test) para ejecutar pruebas.
  - **Navegación Tmux:** Integración transparente entre paneles de Neovim y [Tmux](https://github.com/tmux/tmux).
- **Soporte de Lenguajes:**
  - **Flutter:** Herramientas específicas para el desarrollo con Flutter.
  - **React Native:** Utilidades para el desarrollo con React Native.
  - **Swagger:** Vista previa para archivos de especificación Swagger/OpenAPI.

## Prerrequisitos

Antes de instalar, asegúrate de tener lo siguiente:

1.  **Neovim:** Versión 0.8 o superior.
2.  **Git:** Para clonar la configuración y los plugins.
3.  **Nerd Font:** Una fuente parcheada para poder mostrar correctamente los iconos (por ejemplo, FiraCode Nerd Font, JetBrainsMono Nerd Font).
4.  **Compilador de C:** Necesario para `nvim-treesitter`.
5.  **Dependencias de Plugins:**
    - **LSPs:** Instala los servidores de lenguaje que necesites (ej. `lua-language-server`, `typescript-language-server`, `rust_analyzer`).
    - **Linters/Formatters:** Instala las herramientas que `null-ls` vaya a utilizar (ej. `eslint_d`, `prettierd`, `stylua`).
    - **Debug Adapters:** Instala los adaptadores de depuración para los lenguajes que uses.

## Instalación

1.  **Respalda tu configuración actual (si tienes una):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clona este repositorio:**
    ```bash
    git clone https://github.com/tu_usuario/tu_repo.git ~/.config/nvim
    ```
    *(Reemplaza la URL con la de tu repositorio si lo has subido a GitHub)*

3.  **Inicia Neovim:**
    ```bash
    nvim
    ```
    La primera vez que inicies Neovim, `lazy.nvim` se instalará automáticamente y sincronizará todos los plugins.

## Atajos de Teclado Principales

La tecla `<leader>` está configurada como `Espacio`.

| Atajo                 | Acción                                     | Plugin/Módulo       |
| --------------------- | ------------------------------------------ | ------------------- |
| `<leader>fr` o `<C-p>`| Buscar archivos (Find Files)               | Telescope           |
| `<leader>fg`          | Buscar en contenido de archivos (Live Grep)| Telescope           |
| `<leader><leader>`    | Ver archivos recientes (Old Files)         | Telescope           |
| `<leader>q`           | Cerrar todas las ventanas (Quit All)       | which-key           |
| `<leader>h`           | Limpiar resaltado de búsqueda              | vim-options         |
| `<leader>tn`          | Nueva Pestaña                              | vim-options         |
| `<leader>tc`          | Cerrar Pestaña Actual                      | vim-options         |
| `<leader>to`          | Cerrar todas las demás pestañas            | vim-options         |
| `<C-Tab>`             | Pestaña Siguiente                          | vim-options         |
| `<C-S-Tab>`           | Pestaña Anterior                           | vim-options         |
| `<leader>1`...`<leader>9` | Ir a la pestaña N                         | vim-options         |
| `<c-h/j/k/l>`         | Navegar entre ventanas de Neovim           | vim-options         |

