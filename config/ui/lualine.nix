{
  plugins.lualine = {
    enable = true;
    lazyLoad.settings.event = "BufEnter";
    settings = {
      options = {
        component_separators = "";
        section_separators = {
          left = "";
          right = "";
        };
      };

      extensions = [
        "fzf"
        "nvim-dap-ui"
        "symbols-outline"
        "trouble"
        "neo-tree"
        "quickfix"
        "fugitive"
      ];
      component_separators.left = null;
      component_separators.right = null;
      # +-------------------------------------------------+
      # | A | B | C                             X | Y | Z |
      # +-------------------------------------------------+
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            fmt = "string.lower";
            icon = "";
          }
        ];

        lualine_b = [
          "branch"
          # "filename"
          {
            __unkeyed = "filename";
            symbols = {
              modified = "";
              readonly = "👁️";
              unnamed = "";
            };
          }
          "grapple"
        ];
        lualine_c = [
          "diff"
          "diagnostics"
        ];
        lualine_x = [
          {__raw = ''Snacks.profiler.status()'';}
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_y = [
          "progress"
        ];
        lualine_z = ["location"];
      };
      inactive_sections = {
        lualine_a = ["filename"];
        lualine_b = [];
        lualine_c = ["diagnostics"];
        lualine_x = [];
        lualine_y = [];
        lualine_z = ["location"];
      };
    };
  };
}
