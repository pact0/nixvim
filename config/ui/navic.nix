{
  plugins = {
    navic = {
      enable = true;
      lazyLoad.settings.event = "DeferredUIEnter";

      settings = {
        cplick = true;

        lsp = {
          auto_attach = true;
        };
      };
    };

    navbuddy = {
      enable = true;
      lsp = {
        autoAttach = true;
      };
    };
  };

  opts.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}";
}
