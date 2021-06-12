require'lspinstall'.setup()

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  if server == "lua" then
    -- Get the language server to recognize the `vim` global
    require'lspconfig'[server].setup{
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"},
          },
        },
      },
    }
  else
    require'lspconfig'[server].setup{}
  end
end

