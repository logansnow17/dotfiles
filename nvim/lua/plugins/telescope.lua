return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.6',
    keys = {
      {
        "<leader>p",
        function() require("telescope.builtin").find_files() end,
        desc = "Find File",
      },
      {
        "<leader>F",
        function() require("telescope.builtin").live_grep() end,
        desc = "Find File Contents",
      },
    },
    dependencies = { 'nvim-lua/plenary.nvim' }
}
