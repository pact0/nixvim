{
  pkgs,
  config,
  ...
}: {
  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
  };
  clipboard = {
    # Use system clipboard
    register = "unnamedplus";

    providers = {
      wl-copy = {
        enable = true;
        package = pkgs.wl-clipboard;
      };
    };
  };
  diagnostics = {
    update_in_insert = true;
    severity_sort = true;
    float = {
      border = "rounded";
    };
    jump = {
      severity.__raw = "vim.diagnostic.severity.WARN";
    };
  };
  opts = {
    spell = true;
    spelllang = "en_us";

    # Enable relative line numbers
    number = true;
    relativenumber = true;
    # numberwidth = 4;

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 0;
    expandtab = true;

    # Enable auto indenting and set it to spaces
    smartindent = true;
    shiftwidth = 2;

    # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    breakindent = true;

    # Enable incremental searching
    hlsearch = true;
    incsearch = true;

    # Enable text wrap
    wrap = false;

    # Better splitting
    splitbelow = true;
    splitright = true;

    # Enable mouse mode
    mouse = "a"; # Mouse

    # Enable ignorecase + smartcase for better searching
    ignorecase = true;
    smartcase = true; # Don't ignore case with capitals
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Decrease updatetime
    updatetime = 50; # faster completion (4000ms default)

    # Set completeopt to have a better completion experience
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ]; # mostly just for cmp

    # Enable persistent undo history
    swapfile = false;
    autoread = true;
    backup = false;
    undofile = true;

    # Enable 24-bit colors
    termguicolors = true;

    # Enable the sign column to prevent the screen from jumping
    signcolumn = "yes";

    # Enable cursor line highlight
    cursorline = true; # Highlight the line where the cursor is located

    # Set fold settings
    # These options were recommended by nvim-ufo
    # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    foldcolumn = "0"; # 1 shows char in signcolumn
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    fillchars = {
      eob = " ";
      fold = " ";
      foldopen = "";
      foldsep = " ";
      foldclose = "";
    };

    # Always keep 8 lines above/below cursor unless at start/end of file
    scrolloff = 8;
    # sidescrolloff = 8;

    # Place a column line
    # colorcolumn = "80";

    # Reduce which-key timeout to 10ms
    timeoutlen = 10;

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";

    # More space in the neovim command line for displaying messages
    cmdheight = 0;
    ruler = true;
    title = true;
    confirm = true;

    # We don't need to see things like INSERT anymore
    showmode = false;
  };

  extraConfigLua = with config.icons.diagnostics;
  # lua
    ''
      vim.opt.whichwrap:append("<>[]hl")
      vim.opt.listchars:append("space:·")

      -- below part set's the Diagnostic icons/colors
      local signs = {
        Hint = "${BoldHint}",
        Info = "${BoldInformation}",
        Warn = "${BoldWarning}",
        Error = "${BoldError}",
      }

      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end
    '';
}
