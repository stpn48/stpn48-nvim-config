return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope.builtin")
        local map = vim.keymap.set

        map("n", "<leader>ff", telescope.find_files, { desc = "Find Files" })
        map("n", "<leader>fg", telescope.live_grep, { desc = "Live Grep" })
        map("n", "<leader>fb", telescope.buffers, { desc = "Find Buffers" })
        map("n", "<leader>fh", telescope.help_tags, { desc = "Help Tags" })
        map("n", "<C-p>", telescope.git_files, { desc = "Git files" })
    end
}

