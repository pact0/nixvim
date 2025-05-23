{
  plugins = {
    cmp-emoji = {
      enable = true;
    };
    cmp-dap.enable = true;
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = {
          ghost_text = true;
        };
        sorting = {
          comparators = [
            "require('cmp.config.compare').offset"
            "require('cmp.config.compare').exact"
            "require('cmp.config.compare').score"
            "require('cmp.config.compare').recently_used"
            "require('cmp.config.compare').locality"
            "require('cmp.config.compare').kind"
            "require('cmp.config.compare').length"
            "require('cmp.config.compare').order"
          ];
        };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = {
          expand = "luasnip";
        };
        formatting = {
          fields = [
            "kind"
            "abbr"
            "menu"
          ];
        };
        sources = [
          {name = "nvim_lsp";}
          {name = "emoji";}
          {
            name = "buffer"; # text within current buffer
            # option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            # keywordLength = 3;
          }
          # {name = "copilot";}
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
          {name = "rg";}
          {name = "nvim_lua";}
          {name = "git";}
        ];

        window = {
          completion = {
            border = "solid";
          };
          documentation = {
            border = "solid";
          };
        };

        mapping = {
          "<Tab>" = "cmp.mapping(function(fallback)
            local luasnip = require(\"luasnip\")
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
            end, { \"i\", \"s\" })";
          "<S-Tab>" = "cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
            end, { \"i\", \"s\" })";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
    cmp-nvim-lsp = {
      enable = true;
    }; # lsp
    cmp-nvim-lua = {
      enable = true;
    }; # nvim lua
    cmp-rg = {
      enable = true;
    }; # ripgrep cmp
    cmp-buffer = {
      enable = true;
    };
    cmp-path = {
      enable = true;
    }; # file system paths
    cmp_luasnip = {
      enable = true;
    }; # snippets
    cmp-cmdline = {
      enable = true;
    }; # autocomplete for cmdline
    cmp-git = {
      enable = true;
      settings = {
        gitlab = {
          hosts = ["gitlab.dnm.radiofrance.fr"];
        };
      };
    }; # git commit messages
  };
  extraConfigLua = ''
          luasnip = require("luasnip")
          -- kind_icons = {
          --   Text = "󰊄",
          --   Method = "",
          --   Function = "󰡱",
          --   Constructor = "",
          --   Field = "",
          --   Variable = "󱀍",
          --   Class = "",
          --   Interface = "",
          --   Module = "󰕳",
          --   Property = "",
          --   Unit = "",
          --   Value = "",
          --   Enum = "",
          --   Keyword = "",
          --   Snippet = "",
          --   Color = "",
          --   File = "",
          --   Reference = "",
          --   Folder = "",
          --   EnumMember = "",
          --   Constant = "",
          --   Struct = "",
          --   Event = "",
          --   Operator = "",
          --   TypeParameter = "",
          -- }

      local kind_icons = {
        Text = "",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰇽",
        Variable = "󰂡",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰅲",
      }

    local cmp = require'cmp'

    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })

  '';
}
