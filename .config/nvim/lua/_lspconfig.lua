local lsp = require "lspconfig"

local on_attach = function(client)
    require "completion".on_attach(client)
end

local servers = {
    bashls = {},
    ccls = {},
    cssls = {},
    dockerls = {},
    html = {},
    jsonls = {
        cmd = { "json-languageserver", "--stdio" }
    },
    rls = {},
    sumneko_lua = {
        cmd = { "lua-language-server" }
    },
    vimls = {},
}

for server, config in pairs(servers) do
    config.on_attach = on_attach
    lsp[server].setup(config)
end
