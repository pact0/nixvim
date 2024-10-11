_: {
  plugins.ts-autotag = {
    enable = true;
  };
  plugins.typescript-tools = {
    enable = true;

    settings = {
      tsserverMaxMemory = "auto";
      separateDiagnosticServer = false;
      includeCompletionsWithInsertText = false;
      completeFunctionCalls = true;
      exposeAsCodeAction = "all";
      codeLens = "off"; # experimental for now
      tsserverPlugins = [
        "@styled/typescript-styled-plugin" # needs newer version of typescript in repos to work properly
      ];

      tsserverFormatOptions = {
        tsserver_file_preferences = ''
          {
            includeInlayParameterNameHints = "all", -- "none" | "literals" | "all";
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
            includeCompletionsForModuleExports = true,
            quotePreference = "auto",
            autoImportFileExcludePatterns = { "node_modules/*", ".git/*" },
          }
        '';
      };
    };
  };
}
