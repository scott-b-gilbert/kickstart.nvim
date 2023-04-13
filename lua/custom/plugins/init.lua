-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- configue here or leave blank to use defualts
      })
    end
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("neogen").setup({snippet_engine = "luasnip"})
    end,
    version = "*"
  },
  {
    "f-person/git-blame.nvim",
    init = function()
      vim.g.gitblame_message_template = ' <author> - <date> - <summary> - <sha>'
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "RaafatTurki/hex.nvim",
    config = function()
      require('hex').setup {}
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },
  {
    "xiyaowong/telescope-emoji.nvim",
    config = function()
      require('telescope').setup {
        extensions = {
          emoji = {
            action = function(emoji)
              -- argument emoji is a table.
              -- {name="", value="", cagegory="", description=""}

              vim.fn.setreg("*", emoji.value)
              print([[Press p or "*p to paste this emoji]] .. emoji.value)

              -- insert emoji when picked
              -- vim.api.nvim_put({ emoji.value }, 'c', false, true)
            end,
          }
        },
      }
    end
  }
}
