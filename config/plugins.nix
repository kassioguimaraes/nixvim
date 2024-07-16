{
  plugins = {
    telescope = {
      enable = true;
      settings = {
        defaults = {
          file_ignore_patterns = [ "^.git/" "^vendor/" "^node_modules/" ];
          layout_config = { prompt_position = "top"; };
          mappings = {
            i = {
              "<A-j>" = {
                __raw = "require('telescope.actions').move_selection_next";
              };
              "<A-k>" = {
                __raw = "require('telescope.actions').move_selection_previous";
              };
            };
          };
          selection_caret = "> ";
          set_env = { COLORTERM = "truecolor"; };
          sorting_strategy = "ascending";
        };
      };
      extensions.fzf-native.enable = true;
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
    lazygit.enable = true;
    diffview.enable = true;
    fugitive.enable = true;
    gitsigns.enable = true;
    cursorline.enable = true;
    surround.enable = true;
    undotree.enable = true;
    treesitter = {
      enable = true;
      settings = { indent.enable = true; };
    };
    comment.enable = true;
    treesitter-textobjects.enable = true;
    lastplace.enable = true;
    noice.enable = true;
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
    copilot-chat = {
      enable = true;
      settings = {
        window = {
          layout = "float";
          relative = "cursor";
          width = 1;
          height = 0.7;
          row = 1;
        };
      };
    };
    mini = {
      enable = true;
      modules = {
        ai = {
          n_lines = 50;
          search_method = "cover_or_next";
          custom_textobjects = {
            f.__raw =
              "require('mini.ai').gen_spec.treesitter({ a = '@function.outer', i = '@function.inner' })";
            c.__raw =
              "require('mini.ai').gen_spec.treesitter({ a = '@class.outer', i = '@class.inner' })";
            i.__raw =
              "require('mini.ai').gen_spec.treesitter({ a = '@conditional.outer', i = '@conditional.inner' })";
            t.__raw =
              "require('mini.ai').gen_spec.treesitter({ a = '@comment.outer', i = '@comment.outer' })";
            a.__raw =
              "require('mini.ai').gen_spec.treesitter({ a = '@parameter.outer', i = '@parameter.outer' })";
          };
        };
      };
    };

  };
}
