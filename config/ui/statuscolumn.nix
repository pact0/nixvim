{...}: {
  plugins.statuscol = {
    enable = true;

    # lazyLoad.settings.event = ["DeferredUIEnter"];

    settings = {
      # relculright = true;

      segments = [
        {
          text = null;
          sign = {
            name = [".*"];
            namespace = [".*"];
            text = [".*"];
            maxwidth = 1;
            auto = true;
          };
          click = "v:lua.ScSa";
        }
        {
          text = [
            " "
            {__raw = "require('statuscol.builtin').lnumfunc";}
            " "
          ];
          click = "v:lua.ScLa";
        }
        {
          text = null;
          sign = {
            name = [".*"];
            maxwidth = 1;
            colwidth = 1;
            auto = true;
            wrap = true;
          };
          click = "v:lua.ScSa";
        }

        {
          hl = "FoldColumn";
          text = [{__raw = "require('statuscol.builtin').foldfunc";}];
          click = "v:lua.ScFa";
        }
      ];
    };
  };
}
