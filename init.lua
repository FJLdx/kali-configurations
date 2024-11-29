-- Asegura que Packer esté cargado
vim.cmd [[packadd packer.nvim]]

-- Configuración de Packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer gestiona sus propios complementos

  -- Complementos para autocompletado
  use 'neovim/nvim-lspconfig' -- Configuración del LSP
  use 'hrsh7th/nvim-cmp' -- Complemento de autocompletado
  use 'hrsh7th/cmp-nvim-lsp' -- Fuente para nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Autocompletado desde buffers
  use 'hrsh7th/cmp-path' -- Autocompletado para rutas
  use 'hrsh7th/vim-vsnip' -- Snippets opcional
  use 'hrsh7th/cmp-vsnip' -- Fuente de snippets para cmp

  -- Esquema de colores Dracula
  use 'dracula/vim'

  -- Treesitter para resaltado avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)

-- Configuración de opciones generales
vim.opt.termguicolors = true -- Habilitar colores verdaderos

-- Configuración de Dracula
vim.g.dracula_transparent_bg = true -- Fondo transparente
vim.cmd("colorscheme dracula") -- Activar Dracula

-- Personalización del fondo transparente
vim.cmd("highlight Normal guibg=none")

-- Configuración de Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "lua", "python", "javascript" }, -- Lenguajes a instalar
  highlight = {
    enable = true, -- Habilitar resaltado avanzado
  },
}

-- Configuración de nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Si usas snippets
    end,
  },
  mapping = {
    -- Usa las flechas para navegar el menú
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4), -- Desplazar documentos arriba
    ['<C-f>'] = cmp.mapping.scroll_docs(4), -- Desplazar documentos abajo
    ['<C-Space>'] = cmp.mapping.complete(), -- Forzar apertura del menú
    ['<C-e>'] = cmp.mapping.abort(), -- Cierra el menú
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirma la selección
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }
})

-- Configuración del servidor de lenguaje Bash
require'lspconfig'.bashls.setup{}

