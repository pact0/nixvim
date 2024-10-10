{pkgs, ...}: {
  plugins.nvim-ufo = {
    enable = true;
  };

  plugins.statuscol = {
    enable = true;

    settings = {
      bt_ignore = null;
      clickhandlers = {
        FoldClose = "require('statuscol.builtin').foldclose_click";
        FoldOpen = "require('statuscol.builtin').foldopen_click";
        FoldOther = "require('statuscol.builtin').foldother_click";
        Lnum = "require('statuscol.builtin').lnum_click";
      };

      clickmod = "c";
      ft_ignore = null;
      relculright = true;

      segments = [
        {
          click = "v:lua.ScSa";
          text = [
            "%s"
          ];
        }
        {
          click = "v:lua.ScLa";
          condition = [
            true
            {
              __raw = "require('statuscol.builtin').not_empty";
            }
          ];
          text = [
            {
              __raw = "require('statuscol.builtin').lnumfunc";
            }
            " "
          ];
        }
        {
          click = "v:lua.ScFa";
          text = [
            {
              __raw = "require('statuscol.builtin').foldfunc";
            }
          ];
        }
      ];
      setopt = true;
      thousands = ".";
    };
  };

  extraConfigLua = ''
    vim.keymap.set('n', 'K', function()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
            -- choose one of coc.nvim and nvim lsp
            vim.lsp.buf.hover()
        end
    end)
  '';
}
