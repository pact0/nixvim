{ config, ... }:
let
  # theme =
  # if config.override_colors
  # then config.colors
  # else config.theme;
  theme = if config.colors != null then config.colors else config.theme;
in
{
  colorschemes = {
    base16 = {
      enable = true;
      setUpBar = true;
      colorscheme = theme;
      settings = {
        cmp = true;
        illuminate = true;
        indentblankline = true;
        lsp_semantic = true;
        mini_completion = true;
        telescope = true;
        telescope_borders = true;
        notify = true;
        dapui = true;
        ts_rainbow = true;
      };
    };
  };
}
