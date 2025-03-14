return {
  "ThePrimeagen/harpoon",
  -- branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ha",
      "<cmd>lua require('harpoon.mark').add_file()<CR>",
      desc = "Harpoon Mark File",
    },
    {
      "<leader>hq",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
      desc = "Harpoon Toggle Quick Menu",
    },
    {
      "<leader>hp",
      "<cmd>lua require('harpoon.ui').nav_prev()<CR>",
      desc = "Harpoon Go To Previous Mark",
    },
    {
      "<leader>hn",
      "<cmd>lua require('harpoon.ui').nav_next()<CR>",
      desc = "Harpoon Go To Next Mark",
    },
    {
      "<leader>h1",
      "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
      desc = "Harpoon Go To First Mark",
    },
    {
      "<leader>h2",
      "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
      desc = "Harpoon Go To Second Mark",
    },
    {
      "<leader>h3",
      "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
      desc = "Harpoon Go To Third Mark",
    },
    {
      "<leader>h4",
      "<cmd>lua require('harpoon.ui').nav_file(4)<CR>",
      desc = "Harpoon Go To Fourth Mark",
    },
  },
}
