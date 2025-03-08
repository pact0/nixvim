{
  plugins.blink-cmp-spell.enable = true;
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      spell = {
        module = "blink-cmp-spell";
        name = "Spell";
        score_offset = 100;
        opts = {
        };
      };
    };
  };
}
