{
  config,
  lib,
  ...
}: {
  imports = [
    ./autocommands.nix
    ./keys.nix
    ./ft.nix
    ./sets.nix
    ./highlight.nix

    ./plug/colorscheme/colorscheme.nix
    ./plug/colorscheme/transparent.nix

    ./plug/completion

    ./plug/git
    ./plug/lsp
    ./plug/debug
    ./plug/snacks

    ./plug/mini

    ./plug/snippets/luasnip.nix

    ./plug/statusline/lualine.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui

    ./plug/utils
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
