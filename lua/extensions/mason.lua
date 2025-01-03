--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",             -- LSP for Lua language
    "ts_ls",           -- LSP for Typescript and Javascript
    "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
    "cssls",              -- LSP for CSS
    "pyright",            -- LSP for Python
    "volar",              -- LSP for Vue
    "svelte",               -- LSP for Svelte
--  "rust_analyzer"       -- LSP for Rust
--  "glsl_analyzer"       -- LSP for GLSL
--  "gopls",              -- LSP for Go
  }
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
}
