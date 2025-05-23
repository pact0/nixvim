{pkgs, ...}: {
  plugins.render-markdown = {
    enable = true;
    # lazyLoad.settings = {
    #   ft = [
    #     "Avante"
    #     "markdown"
    #   ];
    # };

    settings = {
      file_types = [
        "Avante"
        "markdown"
      ];
    };
  };

  extraPackages = with pkgs; [
    pandoc
    mermaid-cli
    tectonic
  ];
}
