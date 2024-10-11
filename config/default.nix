{
  config,
  lib,
  ...
}:
{
  imports = [
    ./autocommands.nix
    ./keys.nix
    ./ft.nix
    ./sets.nix
    ./highlight.nix

    ./plug/colorscheme/colorscheme.nix
    ./plug/colorscheme/transparent.nix

    ./plug/completion/cmp.nix
    ./plug/completion/codecompanion.nix
    ./plug/completion/copilot-cmp.nix
    ./plug/completion/lspkind.nix
    ./plug/completion/schemastore.nix

    ./plug/git
    ./plug/lsp
    ./plug/debug

    ./plug/mini

    ./plug/snippets/luasnip.nix

    ./plug/statusline/lualine.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui

    ./plug/utils/colorizer.nix
    ./plug/utils/comment-box.nix
    ./plug/utils/comment.nix
    ./plug/utils/flash.nix
    ./plug/utils/grapple.nix
    ./plug/utils/hardtime.nix
    ./plug/utils/harpoon.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/markview.nix
    ./plug/utils/obsidian.nix
    # ./plug/utils/oil.nix
    ./plug/utils/spectre.nix
    ./plug/utils/ufo.nix
    ./plug/utils/undotree.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/yaml-companion.nix
    ./plug/utils/todo-comments.nix
  ];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "paradise"
        "decay"
        "edge-dark"
        "mountain"
        "tokyonight"
        "everforest"
        "everblush"
        "jellybeans"
        "aquarium"
        "gruvbox"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "gruvbox";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
