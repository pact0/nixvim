let
  grugPrefix = "<localleader>G";
in {
  plugins.grug-far = {
    enable = true;
    # lazyLoad.settings = {
    #   cmd = "Yazi";
    #   keys = [
    #     "<leader>rc"
    #     "<leader>rC"
    #     "<leader>rb"
    #   ];
    # };

    luaConfig = {
      # replace <localleader> with the value of grugPrefix because the former does not work
      post = ''
        require("grug-far").setup({
            keymaps = {
              replace = { n = "${grugPrefix}r" },
              qflist = { n = "${grugPrefix}q" },
              syncLocations = { n = "${grugPrefix}s" },
              syncLine = { n = "${grugPrefix}l" },
              close = { n = "${grugPrefix}c" },
              historyOpen = { n = "${grugPrefix}t" },
              historyAdd = { n = "${grugPrefix}a" },
              refresh = { n = "${grugPrefix}f" },
              openLocation = { n = "${grugPrefix}o" },
              openNextLocation = { n = "<down>" },
              openPrevLocation = { n = "<up>" },
              gotoLocation = { n = "<enter>" },
              pickHistoryEntry = { n = "<enter>" },
              abort = { n = "${grugPrefix}b" },
              help = { n = "g?" },
              toggleShowCommand = { n = "${grugPrefix}p" },
              swapEngine = { n = "${grugPrefix}e" },
              previewLocation = { n = "${grugPrefix}i" },
              swapReplacementInterpreter = { n = "${grugPrefix}x" },
              applyNext = { n = "${grugPrefix}j" },
              applyPrev = { n = "${grugPrefix}k" },
        }
        });

      '';
    };
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>rc";
      action = "<cmd>lua require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>') } })<cr>";
      options = {
        desc = "Replace with current word";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>rC";
      action = "<cmd>lua require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>'), paths = vim.fn.expand('%') } })<cr>";
      options = {
        desc = "Replace current file with current word";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>rb";
      action = "<cmd>lua require('grug-far').open({ prefills = { paths = vim.fn.expand('%') } })<cr>";
      options = {
        desc = "Replace in current file";
      };
    }
  ];

  autoCmd = [
    {
      pattern = ["grug-far"];
      event = "FileType";
      # group = "my-grug-far-custom-keybinds";
      callback = {
        __raw = "
        function()
          vim.keymap.set('n', '${grugPrefix}w', function()
            local state = unpack(require('grug-far').toggle_flags({ '--fixed-strings' }))
            vim.notify('grug-far: toggled --fixed-strings ' .. (state and 'ON' or 'OFF'))
          end, { buffer = true })
        end
        ";
      };
    }

    {
      pattern = ["grug-far"];
      event = "FileType";
      # group = "my-grug-far-custom-keybinds";
      callback = {
        __raw = "
        function()
          vim.api.nvim_buf_set_keymap(0, 'n', '<C-enter>', '${grugPrefix}o${grugPrefix}c', {})
        end
        ";
      };
    }

    {
      pattern = ["grug-far"];
      event = "FileType";
      # group = "my-grug-far-custom-keybinds";
      callback = {
        __raw = "
        function()
          -- jump back to search input by hitting left arrow in normal mode:
          vim.keymap.set('n', '<left>', function()
            vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 2, 0 })
          end, { buffer = true })
        end
        ";
      };
    }
  ];
}
