{
  plugins.snacks = {
    settings = {
      statuscolumn = {
        enabled = true;

        left = [
          "mark"
          "sign"
        ];

        right = [
          "fold"
          "git"
        ];
      };

      folds = {
        open = true;
        git_hl = true;
      };

      git.patterns = [
        "GitSign"
        "MiniDiffSign"
      ];
    };
  };
}
