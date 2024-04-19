{
  plugins = {
    telescope = {
      enable = true;
      keymaps = {
        "<F1>" = {
          action = "git_files";
          options.desc = "Telescope git Files";
        };
        "<s-F1>" = {
          action = "find_files";
          options.desc = "Telescope find Files";
        };
        "<F2>" = {
          action = "live_grep";
          options.desc = "Telescope grep project";
        };
      };

    };
    oil = {
      enable = true;
      settings = {
        defaultFileExplorer = true;
        deleteToTrash = true;
        skipConfirmForSimpleEdits = true;
      };
    };
    vim-matchup = {
      enable = true;
      matchParen.enable = false;
      enableSurround = true;
    };
    #git
    neogit = { enable = true; };
    diffview.enable = true;
    fugitive.enable = true;
    gitsigns.enable = true;
    cursorline.enable = true;
    surround.enable = true;
    undotree.enable = true;
    treesitter = {
      enable = true;
      indent = true;
    };
    lastplace.enable = true;
    better-escape = {
      enable = true;
      mapping = [ "jj" ];
    };
    copilot-lua = {
      enable = true;
      filetypes = { "*" = true; };
      suggestion.enabled = false;
      panel.enabled = false;
    };

  };

}
