{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "yaml-companion";
      version = "0.1.3";
      src = pkgs.fetchFromGitHub {
        owner = "someone-stole-my-name";
        repo = "yaml-companion.nvim";
        rev = "d190d6c0852a1b3fd2798cf1529655f7f68655d3";
        hash = "sha256-iNne5PR59YWb98Z6HsirIbGk4up45IUWmQPBZ6srZOc=";
      };
    })
  ];

  extraConfigLua = ''
    require("telescope").load_extension("yaml_schema")

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    local cfg = require("yaml-companion").setup({
      -- Add any options here, or leave empty to use the default settings
      lspconfig = {
        cmd = {"yaml-language-server"},
        capabilities = capabilities,
      }

    })

    require("lspconfig")["yamlls"].setup(cfg)
  '';
}
