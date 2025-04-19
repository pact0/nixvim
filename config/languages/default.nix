{
  imports = [
    ./lsp.nix
    ./ts
    ./rust
    ./cpp
    ./cmake
    ./json
    ./tailwind

    ./format.nix
    ./aerial.nix
    ./fastaction.nix
  ];

  # extraConfigLua = ''
  #   vim.diagnostic.config({
  #     signs = {
  #       text = {
  #         [vim.diagnostic.severity.ERROR] = '', -- or other icon of your choice here, this is just what my config has:
  #         [vim.diagnostic.severity.WARN] = '',
  #         [vim.diagnostic.severity.INFO] = '',
  #         [vim.diagnostic.severity.HINT] = '󰌵',
  #       },
  #     },
  #   })
  # '';
}
