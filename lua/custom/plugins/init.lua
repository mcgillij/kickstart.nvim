-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'copilotlsp-nvim/copilot-lsp',
  init = function()
    vim.g.copilot_nes_debounce = 500
    vim.lsp.enable 'copilot'
    vim.keymap.set('n', '<tab>', function()
      require('copilot-lsp.nes').apply_pending_nes()
    end)
  end,
}
