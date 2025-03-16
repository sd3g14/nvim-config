return {
  "ThePrimeagen/harpoon",
  -- branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>a",
      "<cmd>lua require('harpoon.mark').add_file()<CR>",
      desc = "Harpoon Mark File",
    },
    {
      "<leader>h",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
      desc = "Harpoon Toggle Quick Menu",
    },
    {
      "<leader><Right>",
      "<cmd>lua require('harpoon.ui').nav_next()<CR>",
      desc = "Harpoon Go To Next Mark",
    },
    {
      "<leader><Left>",
      "<cmd>lua require('harpoon.ui').nav_prev()<CR>",
      desc = "Harpoon Go To Previous Mark",
    },
    {
      "<leader>1",
      "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
      desc = "Harpoon Go To First Mark",
    },
    {
      "<leader>2",
      "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
      desc = "Harpoon Go To Second Mark",
    },
    {
      "<leader>3",
      "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
      desc = "Harpoon Go To Third Mark",
    },
    {
      "<leader>4",
      "<cmd>lua require('harpoon.ui').nav_file(4)<CR>",
      desc = "Harpoon Go To Fourth Mark",
    },
  },
}
