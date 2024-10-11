{
  plugins.smart-splits = {
    enable = true;
  };

  keymaps = [
    # Windows
    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
      options = {
        desc = "+windows";
      };
    }

    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-W>p";
      options = {
        silent = true;
        desc = "Other window";
      };
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<A-h>";
      action = ":lua require('smart-splits').move_cursor_left()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<A-j>";
      action = ":lua require('smart-splits').move_cursor_down()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<A-k>";
      action = ":lua require('smart-splits').move_cursor_up()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<A-l>";
      action = ":lua require('smart-splits').move_cursor_right()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ":lua require('smart-splits').resize_left()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ":lua require('smart-splits').resize_down()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-k>";
      action = ":lua require('smart-splits').resize_up()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-l>";
      action = ":lua require('smart-splits').resize_right()<CR>";
      options.silent = true;
    }
  ];
}
