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
      key = "<leader>wv";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<leader>wH";
      action = ":lua require('smart-splits').swap_buf_left({ move_cursor = true })<CR>";
      options.silent = true;
    }

    {
      mode = "n";
      key = "<leader>wJ";
      action = ":lua require('smart-splits').swap_buf_down({ move_cursor = true })<CR>";
      options.silent = true;
    }

    {
      mode = "n";
      key = "<leader>wK";
      action = ":lua require('smart-splits').swap_buf_up({ move_cursor = true })<CR>";
      options.silent = true;
    }

    {
      mode = "n";
      key = "<leader>wL";
      action = ":lua require('smart-splits').swap_buf_right({ move_cursor = true })<CR>";
      options.silent = true;
    }

    {
      mode = "n";
      key = "<leader>wR";
      action = ":lua require('smart-splits').start_resize_mode()<CR>";
      options.silent = true;
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
