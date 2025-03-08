{
  plugins.toggleterm = {
    enable = true;

    lazyLoad.settings = {
      cmd = "ToggleTerm";
      keys = [
        "<c-\\>"
      ];
    };

    settings = {
      direction = "horizontal";
      persist_mode = true;
      terminal_mappings = true;
      float_opts = {
        border = "curved";
        height = 30;
        width = 130;
      };
      open_mapping = "[[<c-\\>]]";
      insert_mappings = true;
    };
  };

  keymaps = [
    {
      mode = "t";
      key = "<esc>";
      action = "<c-\\><c-n>";
      options = {
        desc = "Ecit terminal mode";
      };
    }
  ];
}
