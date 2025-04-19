{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "grapple.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "cbochs";
        repo = "grapple.nvim";
        rev = "b41ddfc1c39f87f3d1799b99c2f0f1daa524c5f7";
        hash = "sha256-Dz60583Qic2TqO3BPSHME4Q7CiweB1gQCdFNtjNoN3U=";
      };
    })
  ];

  extraConfigLua = ''
    require('grapple').setup({
      scope = "git_branch",
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<c-e>";
      action = "<cmd>lua require('grapple').toggle_tags()<cr>";
      options = {
        desc = "Grapple Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>lua require('grapple').toggle()<cr>";
      options = {
        desc = "Grapple Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>M";
      action = "<cmd>lua require('grapple').toggle_tags()<cr>";
      options = {
        desc = "Grapple Tag";
      };
    }

    {
      mode = "n";
      key = "<leader>1";
      action = "<cmd>Grapple select index=1<cr>";
      options = {
        desc = "Grapple Select 1";
      };
    }

    {
      mode = "n";
      key = "<leader>2";
      action = "<cmd>Grapple select index=2<cr>";
      options = {
        desc = "Grapple Select 2";
      };
    }

    {
      mode = "n";
      key = "<leader>3";
      action = "<cmd>Grapple select index=3<cr>";
      options = {
        desc = "Grapple Select 3";
      };
    }

    {
      mode = "n";
      key = "<leader>4";
      action = "<cmd>Grapple select index=4<cr>";
      options = {
        desc = "Grapple Select 4";
      };
    }

    {
      mode = "n";
      key = "<leader>5";
      action = "<cmd>Grapple select index=5<cr>";
      options = {
        desc = "Grapple Select 5";
      };
    }
  ];
}
