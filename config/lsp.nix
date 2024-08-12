{ pkgs, lib, ... }: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        yamlls.enable = true;
        jsonls.enable = true;
        rust-analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };
        gopls.enable = true;
        svelte.enable = true;
        tailwindcss.enable = true;
        tsserver = {
          enable = true;
          filetypes = [
            "typescript"
            "javascript"
            "javascriptreact"
            "typescriptreact"
            "vue"
          ];
          extraOptions = {
            init_options = {
              plugins = [{
                name = "@vue/typescript-plugin";
                location = "${
                    lib.getBin pkgs.vue-language-server
                  }/lib/node_modules/@vue/language-server";
                languages = [ "vue" ];
              }];
            };
          };
        };
        volar = {
          enable = true;
          package = pkgs.vue-language-server;
        };
        pyright.enable = true;
        html = {
          enable = true;
          filetypes = [ "html" "blade" ];
        };
        nixd.enable = true;
        intelephense.enable = true;
      };

    };
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        preselect = "cmp.PreselectMode.None";
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = false })";
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
    copilot-cmp = {
      enable = true;
      fixPairs = true;
    };
    none-ls = {
      #enableLspFormat = true;
      enable = true;
      settings.should_attach = ''
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
