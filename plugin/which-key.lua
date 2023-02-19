-- Carga el plugin Which-key
require('which-key').setup {}

-- Define tus keymaps y etiquetas de descripción
local mappings = {
	["<leader>f"] = {
		name = "+File",
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle File Tree" },
		o = { "<cmd>NvimTreeOpen<cr>", "Open File Tree" }
	}
}
