-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = false,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- Mason ensure installed
M.mason = {
  pkgs = {
    "clangd",
    "cpptools",
    "stylua",
    "shellcheck",
    "shfmt",
    "flake8",
    "cpptools",
  },
}

return M
