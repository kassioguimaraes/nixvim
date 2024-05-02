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
        pyright.enable = true;
        nixd.enable = true;
        intelephense.enable = true;
      };

    };
    cmp = {
      enable = true;
      #preselect = "None";
      autoEnableSources = true;
      settings = {

        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
        snippet.expand =
          "function(args) require('luasnip').lsp_expand(args.body) end";

        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "copilot"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

      };
    };
    luasnip.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    #lsp-format.enable = true;
    lspsaga = {
      enable = true;
      symbolInWinbar.enable = false;
    };
    cmp-nvim-lsp.enable = true;
    copilot-cmp.enable = true;
    none-ls = {
      #enableLspFormat = true;
      enable = true;
      shouldAttach = ''
        function(bufnr)
                return not vim.api.nvim_buf_get_name(bufnr):match("^git://")
            end
      '';
      sources = {
        formatting = {
          nixfmt.enable = true;
          rustywind.enable = true;
          black.enable = true;
        };
        diagnostics = {
          golangci_lint.enable = true;
          phpstan.enable = true;
        };
      };
    };
  };
}
