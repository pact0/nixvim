{
  config,
  lib,
  ...
}: let
  inherit (config) color;
in {
  config = lib.mkIf config.colorschemes.base16.enable {
    highlight = {
      # MiniTablineCurrent = {
      #   bg = "none";
      #   fg.__raw = color "base05";
      # };
      # MiniTablineVisible = {
      #   bg = "none";
      #   fg.__raw = color "base03";
      # };
      # MiniTablineHidden = {
      #   bg = "none";
      #   fg.__raw = color "base03";
      # };
      # MiniTablineModifiedCurrent = {
      #   bg = "none";
      #   fg.__raw = color "base0A";
      # };
      # MiniTablineModifiedVisible = {
      #   bg = "none";
      #   fg.__raw = color "base0B";
      # };
      # MiniTablineModifiedHidden = {
      #   bg = "none";
      #   fg.__raw = color "base0B";
      # };
      # MiniNotifyNormal = {
      #   bg.__raw = color "base00";
      # };
      # MiniNotifyBorder = {
      #   bg.__raw = color "base00";
      #   fg.__raw = color "base00";
      # };
      # CursorLine = {
      #   fg.__raw = "none";
      #   bg.__raw = "none";
      # };
      # CursorLineNr = {
      #   fg.__raw = "none";
      #   bg.__raw = "none";
      # };
      # StatusNormal = {
      #   bg.__raw = "none";
      #   fg.__raw = "none";
      # };
      # TelescopePromptBorder = {
      #   fg.__raw = color "base01";
      #   bg.__raw = color "base01";
      # };
      # TelescopePromptNormal = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base01";
      # };
      # TelescopePromptPrefix = {
      #   fg.__raw = color "base08";
      #   bg.__raw = color "base01";
      # };
      # TelescopeSelection = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base01";
      # };
      # Pmenu = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base01";
      # };
      # PmenuSbar = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base01";
      # };
      # PmenuThumb = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base01";
      # };
      # PmenuSel = {
      #   fg.__raw = "none";
      #   bg.__raw = color "base02";
      # };
      # CmpItemAbbrMatch = {
      #   fg.__raw = color "base05";
      #   bg = "none";
      # };
      # CmpItemAbbrMatchFuzzy = {
      #   fg.__raw = color "base05";
      #   bg = "none";
      # };
      # CmpItemAbbr = {
      #   fg.__raw = color "base03";
      #   bg = "none";
      # };
      # CmpItemKind = {
      #   fg.__raw = color "base0E";
      #   bg = "none";
      # };
      # CmpItemMenu = {
      #   fg.__raw = color "base0E";
      #   bg = "none";
      # };
      # CmpItemKindSnippet = {
      #   fg.__raw = color "base0E";
      #   bg = "none";
      # };
      # VertSplit = {
      #   fg.__raw = color "base01";
      #   bg = "none";
      # };
      # LineNr = {
      #   fg.__raw = color "base03";
      #   bg = "none";
      # };
      # NoiceCmdlinePopup = {
      #   fg.__raw = color "base04";
      #   bg.__raw = color "base01";
      # };
      # NoiceCmdlinePopupBorder = {
      #   fg.__raw = color "base01";
      #   bg.__raw = color "base01";
      # };
      # NoiceCmdlinePopupBorderSearch = {
      #   fg.__raw = color "base01";
      #   bg.__raw = color "base01";
      # };
      # TSAttribute = {
      #   fg.__raw = color "base0D";
      # };
      # TSBoolean = {
      #   fg.__raw = color "base0D";
      # };
      # TSCharacter = {
      #   fg.__raw = color "base0D";
      # };
      # TSComment = {
      #   fg.__raw = color "base02";
      #   italic = true;
      # };
      # TSConditional = {
      #   fg.__raw = color "base08";
      # };
      # TSConstant = {
      #   fg.__raw = color "base0D";
      # };
      # TSConstBuiltin = {
      #   fg.__raw = color "base0D";
      # };
      # TSConstMacro = {
      #   fg.__raw = color "base0A";
      # };
      # TSConstructor = {
      #   fg.__raw = color "base0D";
      # };
      # TSException = {
      #   fg.__raw = color "base03";
      # };
      # TSField = {
      #   fg.__raw = color "base08";
      # };
      # TSFloat = {
      #   fg.__raw = color "base03";
      # };
      # TSFunction = {
      #   fg.__raw = color "base08";
      # };
      # TSFuncBuiltin = {
      #   fg.__raw = color "base0C";
      # };
      # TSFuncMacro = {
      #   fg.__raw = color "base0B";
      # };
      # TSInclude = {
      #   fg.__raw = color "base08";
      # };
      # TSKeyword = {
      #   fg.__raw = color "base0E";
      # };
      # TSKeywordFunction = {
      #   fg.__raw = color "base0D";
      # };
      # TsKeywordOperator = {
      #   fg.__raw = color "base0D";
      # };
      # TSKeywordReturn = {
      #   fg.__raw = color "base0D";
      # };
      # TSLabel = {
      #   fg.__raw = color "base0D";
      # };
      # TSMethod = {
      #   fg.__raw = color "base0D";
      # };
      # TSNamespace = {
      #   fg.__raw = color "base08";
      # };
      # TSNumber = {
      #   fg.__raw = color "base0A";
      # };
      # TSParameter = {
      #   fg.__raw = color "base08";
      # };
      # TSParameterReference = {
      #   fg.__raw = color "base08";
      # };
      # TSProperty = {
      #   fg.__raw = color "base08";
      # };
      # TSPunctDelimiter = {
      #   fg.__raw = color "base05";
      # };
      # TSPunctBracket = {
      #   fg.__raw = color "base05";
      # };
      # TSPunctSpecial = {
      #   fg.__raw = color "base05";
      # };
      # TSRepeat = {
      #   fg.__raw = color "base0A";
      # };
      # TSString = {
      #   fg.__raw = color "base0B";
      # };
      # TSStringRegex = {
      #   fg.__raw = color "base0B";
      # };
      # TSStringEscape = {
      #   fg.__raw = color "base0D";
      # };
      # TSStringSpecial = {
      #   fg.__raw = color "base0D";
      # };
      # TSSymbol = {
      #   fg.__raw = color "base08";
      # };
      # TSTag = {
      #   fg.__raw = color "base0D";
      # };
      # TSTagAttribute = {
      #   fg.__raw = color "base08";
      # };
      # TSTagDelimiter = {
      #   fg.__raw = color "base05";
      # };
      # TSStrong = {
      #   fg.__raw = color "base05";
      # };
      # TSEmphasis = {
      #   italic = true;
      #   fg.__raw = color "base05";
      # };
      # TSUnderline = {
      #   fg.__raw = color "base0E";
      # };
      # TSStrike = {
      #   fg.__raw = color "base05";
      # };
      # TSTitle = {
      #   fg.__raw = color "base0A";
      # };
      # TSLiteral = {
      #   fg.__raw = color "base0B";
      # };
      # TSURI = {
      #   fg.__raw = color "base0A";
      # };
      # TSMath = {
      #   fg.__raw = color "base0D";
      # };
      # TSTextReference = {
      #   fg.__raw = color "base0D";
      # };
      # TSEnvirontment = {
      #   fg.__raw = color "base0E";
      # };
      # TSEnvironmentName = {
      #   fg.__raw = color "base0A";
      # };
      # TSNote = {
      #   fg.__raw = color "base03";
      # };
      # TSWarning = {
      #   fg.__raw = color "base00";
      #   bg.__raw = color "base08";
      # };
      # TSDanger = {
      #   fg.__raw = color "base03";
      # };
      # TSType = {
      #   fg.__raw = color "base0A";
      # };
      # TSTypeBuiltin = {
      #   fg.__raw = color "base0A";
      # };
      # TSVariable = {
      #   fg.__raw = color "base05";
      # };
      # TSVariableBuiltin = {
      #   fg.__raw = color "base0D";
      # };

      RainbowRed.fg.__raw = color "base08";
      RainbowYellow.fg.__raw = color "base09";
      RainbowBlue.fg.__raw = color "base0A";
      RainbowOrange.fg.__raw = color "base0B";
      RainbowGreen.fg.__raw = color "base0C";
      RainbowViolet.fg.__raw = color "base0D";
      RainbowCyan.fg.__raw = color "base0E";
    };
  };
}
