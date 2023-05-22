return {
  "nvim-neorg/neorg",
  config = function()
    require("neorg").setup({
      -- configuration here
      -- lazy-load on filetype
      ft = "norg",
      -- options for neorg. This will automatically call `require("neorg").setup(opts)`
      opts = {
        load = {
          ["core.defaults"] = {}, -- Load default behaviour
          ["core.norg.concearler"] = {}, -- Adds pretty inons to your documents
          ["core.norg.dirman"] = {
            config = {
              workspace = {
                notes = "~/notes",
              },
            },
          },
        },
      },
    })
  end,
  run = ":Neorg sync-parsers", -- This is the important bit!
  requires = "nvim-lua/plenary.nvim",
}
