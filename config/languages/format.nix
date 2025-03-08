{
  lib,
  pkgs,
  ...
}: let
  typescriptConfig = {
    __unkeyed-1 = "prettierd";
    __unkeyed-2 = "prettier";
    timeout_ms = 2000;
    stop_after_first = true;
  };
in {
  # extraPackages = with pkgs; [black pylint shellcheck shfmt shellharden prettierd];

  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        bash = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        nix = ["alejandra"];
        cpp = ["clang_format"];

        javascript = typescriptConfig;
        javascriptreact = typescriptConfig;
        typescript = typescriptConfig;
        typescriptreact = typescriptConfig;

        rust = ["rustfmt"];

        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
      };

      log_level = "warn";
      notify_on_error = false;
      notify_no_formatters = false;

      format_after_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters = {
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        shfmt = {
          command = lib.getExe pkgs.shfmt;
        };
        shellharden = {
          command = lib.getExe pkgs.shellharden;
        };
        squeeze_blanks = {
          command = lib.getExe' pkgs.coreutils "cat";
        };
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };

        rustfmt = {
          command = lib.getExe pkgs.rustfmt;
        };
      };
    };
  };
}
