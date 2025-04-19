{
  config,
  lib,
  ...
}: {
  imports = [
    ./common
    ./languages
    ./completion
    ./ui
    ./movement
    ./workflow
    ./tree
    ./ai
    ./testing
    ./debug
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
