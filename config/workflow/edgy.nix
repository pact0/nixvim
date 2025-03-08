{
  plugins.edgy = {
    enable = true;
    settings = {
      animate = {
        enabled = false;
      };
      bottom = [
        # {
        #   filter = ''
        #     function(buf, win)
        #       return vim.api.nvim_win_get_config(win).relative == ""
        #     end
        #   '';
        #   ft = "toggleterm";
        #   size = 30;
        # }
        # {
        #   filter = ''
        #     function(buf)
        #       return vim.bo[buf].buftype == "help"
        #     end
        #   '';
        #   ft = "help";
        #   size = 20;
        # }
      ];
      left = [
        {
          ft = "neo-tree";
          title = "Neo-Tree";
          filter = ''
            function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end
          '';
          open = "Neotree";
        }
        #
        {
          title = "Neo-Tree Git";
          ft = "neo-tree";
          filter = ''
            function(buf)
                return vim.b[buf].neo_tree_source == "git_status"
            end
          '';
          pinned = true;
          # collapsed = true;
          open = "Neotree position=right git_status";
        }

        {
          title = "Neo-Tree Buffers";
          ft = "neo-tree";
          filter = ''
            function(buf)
                return vim.b[buf].neo_tree_source == "buffers"
            end
          '';
          pinned = true;
          # collapsed = true;
          open = "Neotree position=top buffers";
        }

        {
          title = "Outline";
          ft = "aerial";
          filter = ''
            function(buf)
                return vim.b[buf].neo_tree_source == "aerial"
            end
          '';
          pinned = true;
          # collapsed = true;
          open = "AerialOpen";
        }

        # {
        #   ft = "Outline";
        #   title = ''
        #     function()
        #       local buf_name = vim.api.nvim_buf_get_name(0) or "[No Name]"
        #       return vim.fn.fnamemodify(buf_name, ":t")
        #     end
        #   '';
        #   pinned = true;
        #   open = "SymbolsOutlineOpen";
        # }
        #
        # "neo-tree"
      ];
      wo = {
        signcolumn = "no";
        spell = false;
        winbar = false;
        winfixheight = false;
        winfixwidth = false;
        winhighlight = "";
      };
    };
  };
}
