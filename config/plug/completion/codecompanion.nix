{
  lib,
  pkgs,
  ...
}: let
  inherit (lib) mkIf;

  pname = "codecompanion";
  version = "v8.3.0";

  codecompanion_enable = true;
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "olimorris";
        repo = "codecompanion.nvim";
        rev = "refs/tags/${version}";
        hash = "sha256-+myhRQgak2u5WON/ZfVP5e9hwINize+i5zQdDk5zvgE=";
      };
    })
  ];

  extraConfigLua = ''
    require("codecompanion").setup({
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      agent = {
        adapter = "copilot",
      },
    },

    });
  '';
  keymaps = mkIf codecompanion_enable [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>a";
      action = "CodeCompanion";
      options = {
        silent = true;
        desc = "+codecompanion";
      };
    }

    {
      mode = [
        "v"
      ];
      key = "<leader>aR";
      action = "CodeCompanion";
      options = {
        silent = true;
        desc = "+codecompanion";
      };
    }

    {
      mode = [
        "v"
        "n"
      ];
      key = "<leader>aE";
      action = "<cmd>CodeCompanion /explain <cr>";
      options = {
        silent = true;
        desc = "CodeCompanion Explain";
      };
    }

    {
      mode = [
        "v"
      ];
      key = "<leader>aA";
      action = "<cmd>CodeCompanionChat Add <cr>";
      options = {
        silent = true;
        desc = "CodeCompanion Add Selected to Chat";
      };
    }

    {
      key = "<leader>ac";
      action = ":CodeCompanionChat Toggle<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion Chat";
      };
    }
    {
      key = "<leader>af";
      action = ":CodeCompanionActions<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "CodeCompanion Actions";
      };
    }
  ];
}
