{
  plugins = {
    transparent = {
      enable = true;
      settings = {
        exclude_groups = [
          # "DiffviewStatusAdded"
          # "DiffviewStatusUntracked"
          # "DiffviewStatusModified"
          # "DiffviewStatusRenamed"
          # "DiffviewStatusCopied"
          # "DiffviewStatusTypeChanged"
          # "DiffviewStatusUnmerged"
          # "DiffviewStatusUnknown"
          # "DiffviewStatusDeleted"
          # "DiffviewStatusBroken"
          # "DiffviewStatusIgnored"
          # ###
          # "GitSignsChange"
          # "GitSignsDelete"
          # "GitSignsAdd"
          # "GitGutterAddLine"
          # "GitGutterDeleteLine"
          # "GitSignsAddInline"
          # "GitSignsChangeInline"
          # "GitSignsDeleteInline"
          # "GitGutterDeleteLine"
          # "GitSignsDeleteLnInline"
          # "GitSignsDeleteVirtLn"
          # ##
          # "DiffDelete"
          # "DiffAdd"
          # "DiffChange"
          # "DiffText"
          # ##
          # "SignifyLineDelete"
          # #
          # "TermCursor"
        ];
        extra_groups = [
          "NormalFloat"
          "NvimTreeNormal"
          "NeoTree"
          "BufferLine"
          "lualine"
          "Telescope"
          "TelescopeNormal"
          "TelescopeBorder"
          "TelescopePromptBorder"
          "LspFloatWinNormal"
          "IndentBlanklineChar"
          "Normal"
          "toggleterm"
          "TreesitterContext"
          "FoldColumn"
        ];
      };
    };
  };
}
