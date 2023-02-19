-- Establecer el esquema de color predetermoinado
vim.o.background = 'dark' -- Establecer el fondo en negro
vim.o.termguicolors = true -- Habilitar soporte de color
vim.o.signcolumn = 'yes'


local current_theme = vim.g.current_theme

-- Carga el tema
pcall(vim.cmd, 'colorscheme ' .. current_theme)
