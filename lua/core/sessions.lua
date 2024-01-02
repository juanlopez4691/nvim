local M = {}

local utils = require("core.utils")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

vim.g.session_dir = vim.fn.stdpath("config") .. "/sessions"

if vim.fn.isdirectory(vim.g.session_dir) == 0 then
  vim.fn.mkdir(vim.g.session_dir, "p")
end

local function get_telescope_opts(title, mappings)
  return require("telescope.themes").get_dropdown({
    attach_mappings = mappings,
    prompt_title = title,
    cwd = vim.g.session_dir,
    previewer = false,
  })
end

local function get_session_name()
  if vim.fn.trim(vim.fn.system("git rev-parse --is-inside-work-tree")) == "true" then
    return vim.fn.trim(vim.fn.system("basename `git rev-parse --show-toplevel`"))
  else
    return "Session.vim"
  end
end

local track_session = false
local default_session_name = get_session_name()

local function make_session(session_name)
  local cmd = "mks! " .. session_name
  vim.cmd(cmd)
end

local function restore_session(prompt_bufnr, _)
  actions.select_default:replace(function()
    actions.close(prompt_bufnr)

    local selection = action_state.get_selected_entry()
    if selection == nil then
      return false
    end

    local session_name = selection[1]:gsub("./", "")

    session_name = vim.g.session_dir .. "/" .. session_name
    vim.cmd("source " .. session_name)
    utils.info(session_name, "Session restored")
  end)
  return true
end

local function save_session(prompt_bufnr, _)
  actions.select_default:replace(function()
    actions.close(prompt_bufnr)

    local selection = action_state.get_selected_entry()
    if selection == nil then
      return false
    end

    local session_name = selection[1]:gsub("./", "")

    session_name = vim.g.session_dir .. "/" .. session_name
    make_session(session_name)
    utils.info(session_name, "Session saved")
  end)
  return true
end

local function delete_session(prompt_bufnr, _)
  actions.select_default:replace(function()
    actions.close(prompt_bufnr)

    local selection = action_state.get_selected_entry()
    if selection == nil then
      return false
    end

    local session_name = selection[1]:gsub("./", "")

    session_name = vim.g.session_dir .. "/" .. session_name
    if vim.fn.delete(session_name) == 0 then
      utils.info(session_name, "Session deleted")
    end
  end)
  return true
end

function M.add_session()
  vim.ui.input({ prompt = "Input session name: ", default = default_session_name }, function(session_name)
    if session_name then
      session_name = vim.g.session_dir .. "/" .. session_name
      make_session(session_name)
      utils.info(session_name, "Session saved")
    end
  end)
end

function M.list_sessions()
  require("telescope.builtin").find_files(get_telescope_opts("Select session", restore_session))
end

function M.save_session()
  require("telescope.builtin").find_files(get_telescope_opts("Save session", save_session))
end

function M.delete_session()
  require("telescope.builtin").find_files(get_telescope_opts("Delete session", delete_session))
end

function M.toggle_session_autosave()
  if track_session then
    vim.api.nvim_del_augroup_by_name("SessionTracking") -- nvim 0.7 and above only
    track_session = false
    utils.info("Session tracking disabled", "Session")
  else
    vim.ui.input({ prompt = "Input session name: ", default = default_session_name }, function(session_name)
      if session_name then
        session_name = vim.g.session_dir .. "/" .. session_name
        make_session(session_name) -- Save the session on toggle
        -- Create autocmd
        local grp = vim.api.nvim_create_augroup("SessionTracking", { clear = true })
        vim.api.nvim_create_autocmd("VimLeave", { -- nvim 0.7 and above only
          pattern = "*",
          callback = function()
            make_session(session_name)
          end,
          group = grp,
        })
        track_session = true
        utils.info("Session tracking enabled", "Session")
      end
    end)
  end
end

return M
