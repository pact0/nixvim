{pkgs, ...}: {
  plugins = {
    crates = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          event = "BufRead Cargo.toml";
        };
      };
      settings = {
        completion.cmp.enabled = true;
      };
    };

    rustaceanvim = {
      enable = true;
      lazyLoad.settings.ft = ["rust"];
      settings = {
        server.default_settings.files.excludeDirs = [".direnv"];
        load_vscode_settings = true;
        dap.autoloadConfigurations = true;
        dap.adapter = let
          code-lldb = pkgs.vscode-extensions.vadimcn.vscode-lldb;
        in {
          executable.command = "${code-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
          executable.args = [
            "--liblldb"
            "${code-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/lldb/lib/liblldb.dylib"
            "--port"
            "31337"
          ];
          type = "server";
          port = "31337";
          host = "127.0.0.1";
        };
      };
    };
  };
}
