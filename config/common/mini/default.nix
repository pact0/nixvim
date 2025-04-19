{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      icons = {};
      ai = {};
      align = {};
      bracketed = {};
      pairs = {};
      trailspace = {};
      indentscope = {};
      cursorword = {};
      basics = {};
      splitjoin = {};
      snippets = {};
    };
  };

  imports = [
    ./clue.nix
    ./diff.nix
    ./files.nix
    ./surround.nix
    ./comment.nix
  ];
}
