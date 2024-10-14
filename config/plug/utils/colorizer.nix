{
  plugins.nvim-colorizer = {
    enable = true;
    userDefaultOptions = {
      css = true;
      css_fn = true;
      hsl_fn = true;
      rgb_fn = true;
      tailwind = true;
      names = true;
      mode = "background"; # virtualtext foreground background
    };
  };

  plugins.rainbow-delimiters = {
    enable = true;
    highlight = [
      "RainbowRed"
      "RainbowYellow"
      "RainbowBlue"
      "RainbowOrange"
      "RainbowGreen"
      "RainbowViolet"
      "RainbowCyan"
    ];
  };
}
