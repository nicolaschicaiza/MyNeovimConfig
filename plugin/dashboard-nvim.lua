-- Configuración del dashboard
local dashboard_config = function()
    vim.g.dashboard_default_executive = "telescope"
    vim.g.dashboard_custom_header = {
       " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
       " ████╗  ██║ ██╔════╝ ██╔══██╗ ██║   ██║ ██║ ████╗ ████║",
       " ██╔██╗ ██║ █████╗   ██████╔╝ ██║   ██║ ██║ ██╔████╔██║",
       " ██║╚██╗██║ ██╔══╝   ██╔══██╗ ██║   ██║ ██║ ██║╚██╔╝██║",
       " ██║ ╚████║ ███████╗ ██║  ██║ ╚██████╔╝ ██║ ██║ ╚═╝ ██║",
       " ╚═╝  ╚═══╝ ╚══════╝ ╚═╝  ╚═╝  ╚═════╝  ╚═╝ ╚═╝     ╚═╝",
    }
    vim.g.dashboard_custom_selection = {
        a = {description = {'   Recientes               '}, command = 'Telescope oldfiles'},
        b = {description = {'   Archivos Marcados       '}, command = 'Telescope marks'},
        c = {description = {'   Configuración           '}, command = ':e ~/.config/nvim/init.lua'},
        d = {description = {'   Tema                    '}, command = 'Telescope colorscheme'},
    }
    vim.g.dshboard_custom_footer = {'Neovim ♥ Lua'}

    -- Abre el dashboard al iniciar Neovim
--     vim.api.nvim_exec([[
--         autocmd Filetype dashboard map <buffer> q <cmd>q<CR>
--         autocmd Filetype dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtablne=2
--     ]])
end
dashboard_config()
