local M = {}

function M:new()
  return {}
end

-----------------------------------------------------------
-- Helper method to set keys remaps.
-----------------------------------------------------------
M.map = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Displays log messages.
function M.log(msg, hl, name)
  name = name or "Neovim"
  hl = hl or "Todo"
  vim.api.nvim_echo({ { name .. ": ", hl }, { msg } }, true, {})
end

-----------------------------------------------------------
-- Methods to display notifications.
-----------------------------------------------------------
function M.warn(msg, name)
  vim.notify(msg, vim.log.levels.WARN, { title = name })
end

function M.error(msg, name)
  vim.notify(msg, vim.log.levels.ERROR, { title = name })
end

function M.info(msg, name)
  vim.notify(msg, vim.log.levels.INFO, { title = name })
end

-----------------------------------------------------------
-- Helper method to get project root
-----------------------------------------------------------
function M.get_project_root(root_markers)
  if root_markers == nil then
    root_markers = { ".git", "Makefile" }
  end

  local current_dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0))

  local project_root = vim.fs.find(root_markers, {
    path = current_dir,
    upward = true,
  })[1]

  -- Could not find project root dir, return current dir
  if not project_root then
    return current_dir
  end

  return vim.fs.dirname(project_root)
end

-----------------------------------------------------------
-- Finds a given file from a directory upwards
-----------------------------------------------------------
function M.find_closest_file(filename, starting_dir)
  if starting_dir == nil then
    starting_dir = vim.fn.getcwd()
  end

  local found_files = vim.fs.find(filename, {
    path = starting_dir,
    upward = true,
    type = "file",
  })

  if #found_files > 0 then
    return found_files[1] -- Return the closest phpcs.xml file
  end

  return nil -- Return nil if not found
end

return M
