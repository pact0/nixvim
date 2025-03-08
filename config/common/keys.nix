{
  globals.mapleader = " ";
  globals.maplocalleader = " ";

  keymaps = [
    {
      key = "<Esc>";
      action = "<Esc><cmd>noh<CR>";
      mode = "n";
      options = {
        desc = "Clear HL";
      };
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
      options = {
        desc = "+quit/session";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>g";
      action = "+git";
      options = {
        desc = "+git";
      };
    }

    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
      options = {
        desc = "+ui";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>c";
      action = "+code";
      options = {
        desc = "+code";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        silent = true;
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {
        silent = true;
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    {
      mode = "x";
      key = "<leader>p";
      action = ''"_dP'';
      options = {
        desc = "Deletes to void register and paste over";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>D";
      action = ''"_d'';
      options = {
        desc = "Delete to void register";
      };
    }
  ];
  extraConfigLua = ''
    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
    else
      vim.wo.number = true
        vim.wo.relativenumber = false
        end
        end

        function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
          vim.wo.relativenumber = false
        else
          vim.wo.relativenumber = true
            vim.wo.number = false
            end
            end

            function ToggleWrap()
            vim.wo.wrap = not vim.wo.wrap
            end
  '';
}
