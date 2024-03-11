{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        rust-analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
          };
        gopls.enable = true;
        svelte.enable = true;
        tailwindcss.enable = true;
        tsserver.enable = true;
        pylsp.enable = true;
        nixd.enable = true;
        intelephense.enable = true;
      };

    };
    nvim-cmp = {
      enable = true;
      #preselect = "None";
      autoEnableSources = true;
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = false }) ";
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [
            "i"
            "s"
          ];
        };
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [
            "i"
            "s"
          ];
        };
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "copilot"; }
        { name = "path"; }
        { name = "buffer"; }
      ];

    };
    lsp-format.enable = true;
    lspsaga.enable = true;
    cmp-nvim-lsp.enable = true;
    copilot-cmp.enable = true;
    none-ls = {
      enable = true;
      shouldAttach = ''
        function(bufnr)
                return not vim.api.nvim_buf_get_name(bufnr):match("^git://")
            end
        '';
      sources = {
      diagnostics = {
        golangci_lint.enable = true;
      };
      };
    };
  };
}
