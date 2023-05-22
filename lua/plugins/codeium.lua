return {
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    -- stylua: ignore
    config = function ()
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set("i", "<A-m>", function() return vim.fn["codeium#Accept"]() end, { expr = true, describe = "Accept AI suggestion" })
      vim.keymap.set("i", "<A-f>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true, describe = "Move to next suggestion(ie. cycle)" })
      vim.keymap.set("i", "<A-b>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true, describe = "Move to prev suggestion(ie. cycle)" })
      vim.keymap.set("i", "<A-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true, describe  = "Remove AI prompt" })
      vim.keymap.set("i", "<A-s>", function() return vim.fn["codeium#Complete"]() end, { expr = true, describe = "Take prompt complete" })
    end,
  },
}
