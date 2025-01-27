require("config")

-- ASCII art for the start screen
local header = {
  "⠀⠀⠀⠀⡀⠄⠒⠒⠀⠐⠒⠢⠤⣄⡀⠀⠀⠀⠀",
  "⠴⡢⠀⠀⠤⠀⠐⢠⠄⠀⠠⡤⠀⠈⠒⠒⡢⡀⠀",
  "⠃⡘⠀⠀⣀⣡⣤⣤⣤⣦⣤⣤⣈⡄⠀⠀⠈⠀⡇",
  "⢲⢀⣴⠾⠟⠛⠉⡉⠉⡉⠉⣩⠛⠛⠷⣄⠀⡏⠀",
  "⠈⡘⠁⡅⡆⠀⢠⢁⠀⣇⠈⢹⡍⠀⠀⢈⡆⡇⠀",
  "⢠⠇⣧⡷⢡⢄⡄⠂⠂⠃⠈⡽⣭⢢⠐⡀⢈⡇⠀",
  "⠀⢸⡘⡂⠀⠁⠁⠀⠀⠀⠀⠉⠁⢸⠠⣿⡎⠇⠀",
  "⢠⠀⡟⠿⠢⢀⠀⠀⠀⠄⠀⢀⡠⡯⠝⠙⠀⢸⠀",
  "⠸⡀⢁⡀⠀⡀⠉⠋⣤⢢⠅⠉⠄⡛⠀⡠⢡⠊⠀",
  "⠀⠸⠑⠂⠌⠒⠂⠐⠙⡀⠁⠈⠙⠐⠂⠂⢸⠀⠀",
  "⢀⠗⠂⠀⠠⠀⠀⠀⠈⠀⠀⠀⠀⠄⢊⠀⠀⡆⠀",
  "⠣⠤⠤⠂⢊⠀⠠⠄⠀⠀⠀⠀⠀⢀⠀⠦⠤⠇⠀",
  "⠀⠀⠀⠀⠀⠠⠤⠤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

local function center_ascii_art(art)
  local max_width = 0

  for _, line in ipairs(art) do
    max_width = math.max(max_width, vim.fn.strdisplaywidth(line))
  end

  local win_height = tonumber(vim.api.nvim_command_output("echo &lines")) or 0
  local win_width = tonumber(vim.api.nvim_command_output("echo &columns")) or 0

  local pad_top = math.floor((win_height - #art) / 2)
  local pad_left = math.floor((win_width - max_width) / 2)

  -- Centering the ASCII image
  local centered_art = {}
  for _ = 1, pad_top do
    table.insert(centered_art, "")
  end
  for _, line in ipairs(art) do
    table.insert(centered_art, string.rep(" ", pad_left) .. line) -- Add left padding
  end

  return centered_art
end

local function custom_start_screen()
  vim.cmd("enew")
  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "wipe"
  vim.bo.swapfile = false
  vim.wo.number = false
  vim.wo.relativenumber = false
  vim.wo.signcolumn = "no"
  vim.wo.foldcolumn = "0"
  vim.wo.cursorline = false

  local centered_art = center_ascii_art(header)
  vim.api.nvim_buf_set_lines(0, 0, -1, false, centered_art)
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if #vim.fn.argv() == 0 then
      custom_start_screen()
    end
  end,
})
