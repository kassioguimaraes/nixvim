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
        intelephense.enable = true;
        gopls.enable = true;
        svelte.enable = true;
        tailwindcss.enable = true;
        tsserver.enable = true;
        nixd.enable = true;
      };

    };
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      mapping = {
        "<S-CR>" = "cmp.mapping.complete()";
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
        { name = "path"; }
        { name = "buffer"; }
      ];

    };
    lsp-format.enable = true;
    cmp-nvim-lsp.enable = true;
    none-ls.enable = true;
  };
}
