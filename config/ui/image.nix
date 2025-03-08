{pkgs, ...}: let
  version = "v0.6.0";
  pname = "img-clip";
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "HakonHarnes";
        repo = "img-clip.nvim";
        rev = "refs/tags/${version}";
        hash = "sha256-CBZVQ7gTDAONfHrSJEUL4mBjjxj8eeV2KCuZIA/USv8=";
      };
    })
  ];

  plugins.image = {
    enable = true;
  };
}
