{
  plugins.overseer = {
    enable = true;
  };

  extraConfigLua = ''
    require("overseer").setup({
      templates = { "builtin", "user.cpp_build" },
    })
  '';
}
