-- ─────────────────────────────────────────────────────────────────────────────────────────
-- ─────────────────────────────────────────────────────────────────────────────────────────
-- Este archivo es el punto de entrada principal de tu configuración de Neovim.
-- Es el archivo que se ejecutará al iniciar Neovim y en el que deberías cargar tus plugins,
-- configuraciones ya tajos de teclado.
--
-- Estructura de archivos:
-- ~/.config/nvim/
-- ├── init.lua
-- ├── lua/
-- │   ├─── lsp/
-- │   │   ├── typescript/ './lang/typescript/init.lua'
-- │   │   ├── python/
-- │   │   ├── javascript/
-- │   │   └── ...
-- │   ├── plugins.lua './lua/plugins.lua'
-- │   ├── settings.lua './lua/settings.lua'
-- │   ├── mappings.lua './lua/mappings.lua'
-- │   ├── themes.lua './lua/themes.lua'
-- │   └── ...
-- ├── plugin/
-- │   ├── plugin1.vim
-- │   ├── plugin2.vim
-- │   ├── plugin2.lua
-- │   └── ...
-- ├── autoload/
-- ... └── ...
--
-- ─────────────────────────────────────────────────────────────────────────────────────────
-- ─────────────────────────────────────────────────────────────────────────────────────────

-- Define la ruta de Packer
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Verifica si Packer ya está instalado y, de lo contrario, lo clona
local ensure_packer = function()
    local fn = vim.fn
    if fn.empty(fn.glob(packer_path)) > 0 then
        fn.system({ 'git', 'clone', '--detph', '1', 'https://github.com/wbthomason/packer.nvim', packer_path })
	vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer = require('packer')

-- Inicializa Packer y carga los plugins
local packer_bootstrap = ensure_packer()
packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Sincroniza los plugins si Packer se acaba de instalar
	if type(packer_bootstrap) == 'boolean' and packer_bootstrap == true then
		require('packer').sync()
	end
end)

-- Configuraciones de Neovim
require('settings')

-- Ejemplo de configuración de opciones globales
-- vim.o.syntax = 'on'

-- Ejemplo de configuración de un atajo
-- vim.api.nvim_set_keymap('n', '<C-n>', ':echo "hola, Neovim con Lua!"<CR>', { noremap = true })

-- Declaraciones de plugins
require('plugins')

-- Temas instalados
require('themes')

-- Atajos de teclado
require('mappings')

-- Servicios de lenguajes
require('lsp.typescript')
