{
  plugins.neotest = {
    enable = true;

    lazyLoad.settings = {
      cmd = ["Neotest"];
      keys = [
        "<leader>T"
        "<leader>Tr"
        "<leader>Td"
        "<leader>Tw"
      ];
    };

    adapters = {
      rust = {
        enable = true;
      };

      gtest = {
        enable = true;
      };

      # jest = {
      #   enable = true;
      # };

      vitest = {
        enable = true;
      };

      # playwright = {
      #   enable = true;
      # };
    };

    settings = {
      watch = {
        enable = true;
      };

      consumers = {
        overseer.__raw = "require('neotest.consumers.overseer')";
      };

      overseer = {
        enable = true;
        force_default = false;
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>T";
      action = "+T";
      options = {
        desc = "+test";
      };
    }

    {
      mode = [
        "n"
      ];
      key = "<leader>Tr";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      options = {
        desc = "Run tests in current file";
      };
    }

    {
      mode = [
        "n"
      ];
      key = "<leader>Td";
      action = "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>";
      options = {
        desc = "Run tests in current file";
      };
    }

    {
      mode = [
        "n"
      ];
      key = "<leader>Tw";
      action = "<cmd>lua require('neotest').watch.watch()<CR>";
      options = {
        desc = "Watch tests in current file";
      };
    }
  ];
}
