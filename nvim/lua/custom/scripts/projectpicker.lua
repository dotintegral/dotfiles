-- File: lua/project_picker.lua
--
-- This captures the initial directory so "Root" always refers
-- to the directory Neovim was started in (not wherever you :cd).
local initial_cwd = vim.fn.getcwd()

-- Make `projects` a global table with a single default option.
_G.projects = {
  { label = "Root", path = "." },
}

--- Global function that picks a project from `_G.projects` and cds into it.
function _G.show_project_picker()
  -- Build a new table of expanded projects (turning relative paths into absolute).
  local expanded_projects = {}

  for _, proj in ipairs(_G.projects) do
    local p = proj.path

    -- If the path doesn't start with '/', treat it as relative to `initial_cwd`.
    if not p:match("^/") then
      p = initial_cwd .. "/" .. p
    end

    table.insert(expanded_projects, {
      label = proj.label,
      path  = p,
    })
  end

  -- Present a picker for the expanded project list.
  vim.ui.select(expanded_projects, {
    prompt = "Pick a project to cd into:",
    format_item = function(item)
      return item.label
    end,
  }, function(choice)
    if not choice then
      print("No project selected.")
      return
    end
    vim.cmd("cd " .. choice.path)
    print("Changed directory to: " .. choice.path)
  end)
end
