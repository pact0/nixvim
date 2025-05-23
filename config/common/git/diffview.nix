{
  lib,
  config,
  ...
}: {
  plugins.diffview = {
    enable = true;
    enhancedDiffHl = true;
    view = {
      mergeTool = {
        layout = "diff4_mixed";
      };
    };
  };

  keymaps = lib.mkIf config.plugins.diffview.enable [
    {
      mode = "n";
      key = "<leader>gd";
      action.__raw = ''
        function()
          vim.g.diffview_enabled = not vim.g.diffview_enabled
          if vim.g.diffview_enabled then
            vim.cmd('DiffviewClose')
          else
            vim.cmd('DiffviewOpen')
          end
        end
      '';
      options = {
        desc = "Git Diff toggle";
        silent = true;
      };
    }
  ];
}
