{
  plugins.blink-cmp-dictionary.enable = true;
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      dictionary = {
        module = "blink-cmp-dictionary";
        name = "Dict";
        score_offset = 100;
        min_keyword_length = 3;
        # Optional configurations
        opts = {
        };
      };
    };
  };
}
