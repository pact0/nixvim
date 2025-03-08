{pkgs, ...}: let
  version = "v0.1.0";
  pname = "blink-cmp-avante";
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "Kaiser-Yang";
        repo = "blink-cmp-avante";
        rev = "refs/tags/${version}";
        hash = "sha256-r+GdP7CzndXk2x6h066Ww4LuMBgKDW2GMv/d39r1M48=";
      };
    })
  ];

  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      avante = {
        module = "blink-cmp-avante";
        name = "Avante";
        # score_offset = 100;
        # Optional configurations
        # opts = {
        #   max_completions = 3;
        #   max_attempts = 4;
        #   kind = "Copilot";
        #   debounce = 750;
        #   auto_refresh = {
        #     backward = true;
        #     forward = true;
        #   };
        # };
      };
    };
  };
}
