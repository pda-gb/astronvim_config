-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- переопределение изменения размеров буфера 
    ["<C-S-Left>"] = { "<cmd>:vertical resize -1<cr>", desc = "Minimize window (vertical)"},
    ["<C-S-Right>"] = { "<cmd>:vertical resize +1<cr>", desc = "Maximize window (vertical)"},
    ["<C-S-Down>"] = { "<cmd>:horizontal resize -1<cr>", desc = "Minimize window (horizontal)"},
    ["<C-S-Up>"] = { "<cmd>:horizontal resize +1<cr>", desc = "Maximize window (horizontal)"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
