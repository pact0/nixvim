{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    blink-ripgrep-nvim
  ];

  plugins = {
    blink-cmp-copilot.enable = true;
    cmp-emoji.enable = true;
    cmp-git.enable = true;
    cmp-spell.enable = true;
    cmp-calc.enable = true;
    cmp-treesitter.enable = true;
    cmp-dap.enable = true;
    cmp-path.enable = true;
    lsp.capabilities =
      # Lua
      ''
        capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities())
      '';
    blink-cmp = {
      enable = true;
      luaConfig.pre =
        # lua
        ''
          require('blink.compat').setup({debug = true, impersonate_nvim_cmp = true})
        '';

      settings = {
        keymap = {
          preset = "enter";
        };
        signature = {
          enabled = true;
        };

        sources = {
          default = [
            "buffer"
            "dap"
            "calc"
            "copilot"
            "emoji"
            "ripgrep"
            "path"
            "git"
            "lsp"
            "path"
            "snippets"
            "spell"
            #"treesitter"
          ];
          providers = {
            emoji = {
              name = "emoji";
              module = "blink.compat.source";
            };
            copilot = {
              name = "copilot";
              module = "blink-cmp-copilot";
            };
            git = {
              name = "git";
              module = "blink.compat.source";
            };
            spell = {
              name = "spell";
              module = "blink.compat.source";
            };
            ripgrep = {
              name = "Ripgrep";
              module = "blink-ripgrep";
              score_offset = 1;
            };
            calc = {
              name = "calc";
              module = "blink.compat.source";
            };
            path = {
              name = "path";
              module = "blink.compat.source";
            };
            dap = {
              name = "dap";
              module = "blink.compat.source";
            };
          };
        };

        appearance = {
          use_nvim_cmp_as_default = true;
          nerd_font_variant = "mono";
          kind_icons = {
            Text = "󰉿";
            Method = "";
            Function = "󰊕";
            Constructor = "󰒓";

            Field = "󰜢";
            Variable = "󰆦";
            Property = "󰖷";

            Class = "󱡠";
            Interface = "󱡠";
            Struct = "󱡠";
            Module = "󰅩";

            Unit = "󰪚";
            Value = "󰦨";
            Enum = "󰦨";
            EnumMember = "󰦨";

            Keyword = "󰻾";
            Constant = "󰏿";

            Snippet = "󱄽";
            Color = "󰏘";
            File = "󰈔";
            Reference = "󰬲";
            Folder = "󰉋";
            Event = "󱐋";
            Operator = "󰪚";
            TypeParameter = "󰬛";
            Error = "󰏭";
            Warning = "󰏯";
            Information = "󰏮";
            Hint = "󰏭";

            Emoji = "🤶";
          };
        };
        completion = {
          list = {
            selection = {
              preselect = false;
            };
          };
          menu = {
            border = "none";
            draw = {
              gap = 1;
              treesitter = ["lsp"];
              columns = [
                {
                  __unkeyed-1 = "label";
                }
                {
                  __unkeyed-1 = "kind_icon";
                  __unkeyed-2 = "kind";
                  gap = 1;
                }
                {__unkeyed-1 = "source_name";}
              ];
            };
          };
          trigger = {
            show_in_snippet = false;
          };
          documentation = {
            auto_show = true;
            window = {
              border = "rounded";
            };
          };
          accept = {
            auto_brackets = {
              enabled = true;
            };
          };
        };
      };
    };
  };
}
