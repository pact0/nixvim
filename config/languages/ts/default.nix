let
  ft = [
    "typescript"
    "typescriptreact"
    "javascript"
    "javascriptreact"
  ];
in {
  plugins = {
    ts-autotag = {
      enable = true;

      lazyLoad.settings.ft = ft;
    };

    ts-context-commentstring = {
      enable = true;
    };

    typescript-tools = {
      enable = true;

      lazyLoad.settings.ft = ft;

      settings.settings = {
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
  };
}
