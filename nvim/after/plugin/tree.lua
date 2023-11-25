local tree = require("nvim-tree")
local api = require("nvim-tree.api")

local function edit_or_open()
  local node = api.tree.get_node_under_cursor()

  if node.nodes ~= nil then
    -- expand or collapse folder
    api.node.open.edit()
  else
    -- open file
    api.node.open.edit()
    -- Close the tree if file was opened
    api.tree.close()
  end
end

-- open as vsplit on current node
local function vsplit_preview()
  local node = api.tree.get_node_under_cursor()

  if node.nodes ~= nil then
    -- expand or collapse folder
    api.node.open.edit()
  else
    -- open file as vsplit
    api.node.open.vertical()
  end

  -- Finally refocus on tree if it was lost
  api.tree.focus()
end

-- on_attach
vim.keymap.set("n", "l", edit_or_open, {})
vim.keymap.set("n", "L", vsplit_preview, {})
vim.keymap.set("n", "h", api.tree.close, {})
vim.keymap.set("n", "H", api.tree.collapse_all, {})

tree.setup {
  renderer = {
    add_trailing = true,
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = "none",
    highlight_modified = "none",
    root_folder_label = ":~:s?$?/..?",
    indent_width = 2,
    indent_markers = {
      enable = true,
      inline_arrows = false,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "after",
      modified_placement = "after",
      padding = "",
      symlink_arrow = " ➛ ",
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = true,
        modified = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "󰆤",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = " ✗",
          staged = " ✓",
          unmerged = " ",
          renamed = " ➜",
          untracked = " ★",
          deleted = " ",
          ignored = " ◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "package.json" },
    symlink_destination = true,
  },
}