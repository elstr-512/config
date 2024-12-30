-- load defaults i.e lua_lsp
-- how to: https://github.com/neovim/nvim-lspconfig
--
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-------- default servers that don't require any additional setup --------
local servers = {
  "clangd",
}
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

-------- other lsp servers --------

-- assembler lsp, remember to export path to asm-lsp bin : /home/ee/.cargo/bin
require("lspconfig").asm_lsp.setup({})
