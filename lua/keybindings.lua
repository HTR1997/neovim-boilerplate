require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys

-- Personal Keybinds {{{
  im('jk', '<Esc>')
  vm('jk', '<Esc>')

--    Open this file in visual split
  nm('<leader>ev', ':vsplit $HOME/.config/nvim/lua/keybindings.lua<CR>')
--    Source this file
  nm('<leader>so', ':so $HOME/.config/nvim/lua/keybindings.lua<CR>')

  nm('<leader>r', ':w<CR>:silent !../run_file.sh<CR>')


--- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                      -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration
 -- }}}

-- Telescope {{{
nm('<leader>d', '<cmd>Telescope lsp_definitions<CR>')                            -- Goto declaration
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                                   -- Show recent files
nm('<leader>O', '<cmd>Telescope git_files<CR>')                                  -- Search for a file in project
nm('<leader>o', '<cmd>Telescope find_files<CR>')                                 -- Search for a file (ignoring git-ignore)
-- nm('<leader>i', '<cmd>Telescope jumplist<CR>')                                   -- Show jumplist (previous locations)
nm('<leader>b', '<cmd>Telescope git_branches<CR>')                               -- Show git branches
nm('<leader>f', '<cmd>Telescope live_grep<CR>')                                  -- Find a string in project
nm('<leader>q', '<cmd>Telescope buffers<CR>')                                    -- Show all buffers
nm('<leader>a', '<cmd>Telescope<CR>')                                            -- Show all commands
nm('<leader>t', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')              -- Search for dynamic symbols
-- }}}

-- Trouble {{{
nm('<leader>x', '<cmd>TroubleToggle<CR>')                                         -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>Trouble lsp_references<CR>')                                       -- Show use of object in project
-- }}}

-- Neo Tree {{{
nm('<leader>v', '<cmd>NeoTreeFocusToggle<CR>')                                        -- Toggle file explorer
-- }}}

-- lsp_lines {{{
vim.keymap.set('n', '<leader>l', function()
    vim.diagnostic.open_float()
    -- vim.diagnostic.config({
    --virtual_text = vim.diagnostic.config().virtual_text,
    -- virtual_lines = vim.diagnostic.config().virtual_lines
    --})
end)
-- }}}

-- typescript-tools {{{
nm('<leader>i', '<cmd>TSToolsAddMissingImports<CR>')
-- }}}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
