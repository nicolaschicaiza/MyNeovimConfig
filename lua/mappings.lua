--Crea un objeto WhichKey
local wk = require('which-key')


vim.api.nvim_set_keymap('i', 'kj', '<esc>', {})

-- Define el mapeo de teclas para abrir WhichKey
vim.api.nvim_set_keymap('n', '<leader>', '', {})
-- Define el keymap para cambiar de ventana con <leader> + dirección
-- vim.api.nvim_set_keymap('n', '<leader>wk', '<C-w>k', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>wj', '<C-w>j', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>h', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>l', { noremap = true })


-- Define los atajos de teclado usando WhichKey
wk.register({
	["<leader>"] = { -- La tecla <leader>
		name = "Menú de atajos", -- El nombre del menú
		-- Los atajos que deseas mostrar en el menú
		["f"] = {
			name = "+Ficheros",
			['t'] = { "<cmd>NvimTreeToggle<cr>", "Alternar Explorador" },
			['o'] = { "<cmd>NvimTreeOpen<cr>", "Abrir Explorador" },
			['s'] = { "<cmd>w<cr>", "Guardar" }
		},
		["w"] = {
			-- Define el keymap para cambiar de ventana con <leader> + dirección
			name = "+Ventanas",
			['h'] = { "<cmd>wincmd h<cr>", "Ventana Izq" },
			['j'] = { "<cmd>wincmd j<cr>", "Ventana Inf" },
			['k'] = { "<cmd>wincmd k<cr>", "Ventana Sup" },
			['l'] = { "<cmd>wincmd l<cr>", "Ventana Der" }
		}
	}
})
