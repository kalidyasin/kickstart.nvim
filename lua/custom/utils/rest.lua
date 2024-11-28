-- ~/.config/nvim/lua/rest_utils.lua or part of your rest.nvim config file
local M = {}

function M.update_env(key, value)
  local env_file_path = '.env'
  local lines, updated = {}, false

  -- Read the existing .env file
  local env_file = io.open(env_file_path, 'r')
  if env_file then
    for line in env_file:lines() do
      if line:match('^' .. key .. '=') then
        table.insert(lines, key .. '=' .. value) -- Update the key
        updated = true
      else
        table.insert(lines, line)
      end
    end
    env_file:close()
  end

  -- Add the key if it wasn't found
  if not updated then
    table.insert(lines, key .. '=' .. value)
  end

  -- Write back to the .env file
  env_file = io.open(env_file_path, 'w')
  if env_file then
    env_file:write(table.concat(lines, '\n') .. '\n')
    env_file:close()
  else
    print 'Error: Unable to write to .env file.'
  end
end

return M
