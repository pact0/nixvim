{
  plugins = {
    clangd-extensions = {
      enable = true;
      lazyLoad.settings.ft = ["c" "cpp"];

      enableOffsetEncodingWorkaround = true;
      settings = {
        ast = {
          roleIcons = {
            type = "";
            declaration = "";
            expression = "";
            specifier = "";
            statement = "";
            templateArgument = "";
          };
          kindIcons = {
            compound = "";
            recovery = "";
            translationUnit = "";
            packExpansion = "";
            templateTypeParm = "";
            templateTemplateParm = "";
            templateParamObject = "";
          };
        };
      };
    };
  };
}
