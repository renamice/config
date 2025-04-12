local _border = {
  { " ", "FloatBorder" },
  { "",  "FloatBorder" },
  { "|", "FloatBorder" },
  { "|", "FloatBorder" },
  { " ", "FloatBorder" },
  { "",  "FloatBorder" },
  { " ", "FloatBorder" },
  { "|", "FloatBorder" },
}
vim.lsp.handlers["textdocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

vim.diagnostic.config {
  float = { border = _border }
}

local diagnosticHoverAutocmdId = false
vim.o.updatetime = 250
vim.api.nvim_create_user_command(
  "ToggleDiagnosticHover",
  function(args)
    if diagnosticHoverAutocmdId then
      -- If it already exists, delete the specific autocmd
      vim.api.nvim_del_autocmd(diagnosticHoverAutocmdId)
      diagnosticHoverAutocmdId = nil
    else
      -- Create a new autocmd and save its ID
      diagnosticHoverAutocmdId = vim.api.nvim_create_autocmd(
        { "CursorHold", "CursorHoldI" }, {
          callback = function()
            vim.diagnostic.open_float(nil, { focus = false })
          end
        })
    end

    if #args.fargs == 0 then
      vim.notify("DiagnosticHoverEnable: " .. tostring(diagnosticHoverAutocmdId ~= nil), vim.log.levels.INFO)
    end
  end,
  {
    nargs = "?",
    desc = "Toggle diagnostic hover display"
  }
)
vim.cmd("ToggleDiagnosticHover --quite") -- Since my default value is set to false, this is equivalent to enabling it by default
