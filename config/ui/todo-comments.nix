{
  plugins.todo-comments = {
    enable = true;
    # lazyLoad.settings = {
    #   cmd = "TodoComments";
    # };

    settings = {
    };
  };

  plugins.trouble = {
    enable = true;
    lazyLoad.settings = {
      cmd = "Trouble";
      keys = [
        "<leader>xx"
        "<leader>xX"
        "<leader>xL"
        "<leader>xQ"
        "<leader>xt"

        "<leader>cs"
        "<leader>cl"
      ];
    };
    settings = {
      modes = {
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>x";
      action = "+trouble";
      options = {
        desc = "+trouble";
      };
    }

    {
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      mode = "n";
      options = {
        desc = "Diagnostics (Trouble)";
      };
    }

    {
      key = "<leader>xt";
      action = "<cmd>Trouble todo<cr>";
      mode = "n";
      options = {
        desc = "TODO (Trouble)";
      };
    }

    {
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      mode = "n";
      options = {
        desc = "Buffer Diagnostics (Trouble)";
      };
    }

    {
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      mode = "n";
      options = {
        desc = "Symbols (Trouble)";
      };
    }

    {
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      mode = "n";
      options = {
        desc = "Location List (Trouble)";
      };
    }

    {
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      mode = "n";
      options = {
        desc = "Quickfix List (Trouble)";
      };
    }

    {
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      mode = "n";
      options = {
        desc = "LSP Definitions / references / ... (Trouble)";
      };
    }
  ];
}
