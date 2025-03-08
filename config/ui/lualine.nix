{
  plugins.lualine = {
    enable = true;
    settings = {
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
        ];
        lualine_c = [
          "diff"
          "diagnostics"
        ];
        lualine_x = [
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_y = ["progress"];
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
