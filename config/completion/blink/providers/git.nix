{
  plugins.blink-cmp-git.enable = true;
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      git = {
        module = "blink-cmp-git";
        name = "git";
        score_offset = 100;
        opts = {
          commit = {};
          git_centers = {git_hub = {};};
        };
      };
    };
  };
}
