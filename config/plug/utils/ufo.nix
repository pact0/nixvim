{
  plugins.nvim-ufo = {
    enable = true;

    settings = {
      fold_virt_text_handler = ''
        function(virtText, lnum, endLnum, width, truncate)
              local newVirtText = {}
              local totalLines = vim.api.nvim_buf_line_count(0)
              local foldedLines = endLnum - lnum
              local suffix = (" 󱞥 %d %d%%"):format(foldedLines, foldedLines / totalLines * 100)
              local sufWidth = vim.fn.strdisplaywidth(suffix)
              local targetWidth = width - sufWidth
              local curWidth = 0
              for _, chunk in ipairs(virtText) do
                local chunkText = chunk[1]
                local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                if targetWidth > curWidth + chunkWidth then
                  table.insert(newVirtText, chunk)
                else
                  chunkText = truncate(chunkText, targetWidth - curWidth)
                  local hlGroup = chunk[2]
                  table.insert(newVirtText, { chunkText, hlGroup })
                  chunkWidth = vim.fn.strdisplaywidth(chunkText)
                  -- str width returned from truncate() may less than 2nd argument, need padding
                  if curWidth + chunkWidth < targetWidth then
                    suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
                  end
                  break
                end
                curWidth = curWidth + chunkWidth
              end
              local rAlignAppndx =
                math.max(math.min(vim.opt.textwidth["_value"], width - 1) - curWidth - sufWidth, 0)
              suffix = (" "):rep(rAlignAppndx) .. suffix
              table.insert(newVirtText, { suffix, "MoreMsg" })
              return newVirtText
            end
      '';
      provider_selector = ''
        function(bufnr, filetype, buftype)
          local ftMap = {
            vim = "indent",
            python = {"indent"},
            git = ""
          }

         return ftMap[filetype]
        end
      '';
    };
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
