{
  plugins.git-conflict = {
    enable = true;

    settings = {
      default_commands = true;
      # default_mappings = {
      #   both = "b";
      #   next = "n";
      #   none = "0";
      #   ours = "o";
      #   prev = "p";
      #   theirs = "t";
      # };
      disable_diagnostics = false;
      highlights = {
        current = "DiffText";
        incoming = "DiffAdd";
      };
      list_opener = "copen";
    };
  };
}
