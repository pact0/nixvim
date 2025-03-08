{
  plugins.mini.modules.comment = {
    options = {
      custom_commentstring.__raw = ''
        function()
          return require('ts_context_commentstring').calculate_commentstring() or vim.bo.commentstring
        end,
      '';
    };
  };
}
