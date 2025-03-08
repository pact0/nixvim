{
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      markdown = {
        name = "RenderMarkdown";
        module = "render-markdown.integ.blink";
        # fallbacks = { 'lsp' };
      };
    };
  };
}
