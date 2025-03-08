{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules.icons = {};
  };

  imports = [
    ./ai.nix
    ./align.nix
    ./clue.nix
    ./diff.nix
    ./files.nix
    ./surround.nix
    ./comment.nix
    ./pairs.nix
  ];
}
