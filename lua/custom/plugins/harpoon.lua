return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup {
      settings = {
        save_on_toggle = true,
      },
    }
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to Harpoon' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Harpoon Menu' })

    vim.keymap.set('n', '<C-g>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon First' })
    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon Second' })
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon Third' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon Fourth' })
  end,
}
