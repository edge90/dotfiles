local lsp = require "nvim_lsp"

local on_attach = function(client)
  require "diagnostic".on_attach(client)
  require "completion".on_attach(client)
end

local servers = {
  bashls = {},
  ccls = {},
  cssls = {},
  html = {},
  rls = {
  },
  vimls = {},
}

for server, config in pairs(servers) do
  config.on_attach = on_attach
  lsp[server].setup(config)
end
