{pkgs, ...}: {
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    aerial = {
      package = aerial-nvim;
      setup = "require('aerial').setup {}";
    };

    harpoon = {
      package = harpoon;
      setup = "require('harpoon').setup {}";
      after = ["aerial"]; # place harpoon configuration after aerial
    };
  };
}
