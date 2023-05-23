return {
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    -- stylua: ignore
    config = function ()
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set("i", "aa", function() return vim.fn["codeium#Accept"]() end, { expr = true, desc = "Accept AI completion" })
      vim.keymap.set("i", "af", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true, desc = "Next AI completion" })
      vim.keymap.set("i", "ab", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true, desc = "Previous AI completion" })
      vim.keymap.set("i", "ax", function() return vim.fn["codeium#Clear"]() end, { expr = true, desc="Clear AI completions" })
      vim.keymap.set("i", "ac", function() return vim.fn["codeium#Complete"]() end, { expr = true, desc = "Complete" })
    end,
  },
}
