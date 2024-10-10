{
  lib,
  pkgs,
  ...
}:
let
  inherit (lib) mkIf;

  pname = "codecompanion";
  version = "v8.3.0";

  codecompanion_enable = true;
in
{
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
      key = "<leader>ac";
      action = ":CodeCompanionToggle<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion";
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
