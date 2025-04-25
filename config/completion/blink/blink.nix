{
  pkgs,
  config,
  ...
}: let
  aiTools = config.aiTools.enable;
in {
  extraPlugins = with pkgs.vimPlugins; [
    # blink-ripgrep-nvim
  ];

  plugins.blink-compat = {
    enable = true;
    autoLoad = true;
    settings = {
      debug = false;
      impersonate_nvim_cmp = true;
    };
  };

  plugins = {
    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;

      settings = {
        keymap = {
          preset = "none";
          "<Tab>" = ["select_next" "snippet_forward" "fallback"];
          "<S-Tab>" = ["select_prev" "snippet_backward" "fallback"];
        };

        signature = {
          enabled = true;
        };

        completion = {
          accept.create_undo_point = true;
          ghost_text.enabled = true;

          documentation = {
            auto_show = true;
            auto_show_delay_ms = 500;
            window = {
              border = "single";
            };
          };
          list = {
            selection = {
              auto_insert = true;
              preselect = false;
            };
          };
          trigger = {
            show_in_snippet = true;
          };

          accept = {
            auto_brackets = {
              enabled = false;
            };
          };
        };

        sources = {
          default =
            [
              "lsp"
              "buffer"
              "path"
              "snippets"
              "omni"
              # "luasnip"

              "ripgrep"
              "dictionary"
              "spell"
              # "git"
            ]
            ++ (
              if aiTools
              then [
                "avante"
                "copilot"
              ]
              else []
            );
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

            AvanteCmd = "";
            AvanteMention = "";
          };
        };
      };
    };
  };
}
