{
  plugins.auto-session = {
    enable = true;
    settings = {
      auto_restore = true;
      use_git_branch = true;

      bypass_save_filetypes = [
        "alpha"
        "dashboard"
      ];
      suppressed_dirs = [
        "~"
      ];
    };
  };
}
