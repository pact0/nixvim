{
  config,
  lib,
  ...
}: let
  inherit (lib.options) mkEnableOption;
in {
  imports = [
    ./common
    ./languages
    ./completion
    ./ui
    ./movement
    ./workflow
    ./tree
    # ./ai
    ./testing
    ./debug
    ./icons.nix
  ];

  options = {
    theme = lib.mkOption {
      default = "catppuccin";
      type = lib.types.str;
    };

    colors = lib.mkOption {
      default = null;
      # type = lib.types.attrsOf (lib.types.str);
    };

    color = lib.mkOption {
      default = arg: "require('base16-colorscheme').colors." + arg;
      # type = lib.types.attrsOf (lib.types.str);
    };

    aiTools = {
      enable = mkEnableOption "GTK theming options";
    };

    assistant = lib.mkOption {
      default = "copilot";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };

  config = {
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
