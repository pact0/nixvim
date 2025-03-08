{
  plugins.neo-tree = {
    enable = true;

    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    closeIfLastWindow = true;
    autoCleanAfterSessionRestore = true;
    sourceSelector = {
      contentLayout = "start";
    };
    sources = [
      "filesystem"
      "buffers"
      "git_status"
      "diagnostics"
      "document_symbols"
    ];
    extraSources = [
      "document_symbols"
    ];
  };
}
