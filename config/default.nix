{ pkgs, ... }: {
  imports = [
    ./colorscheme.nix
    ./basemap.nix
    ./barbar.nix
    ./plugins.nix
    ./lsp.nix
    ./which-key.nix
  ];
  config.globals.mapleader = " ";
  config.opts = {
    number = true;
    background = "light";
    tabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    clipboard = "unnamedplus";
    ignorecase = true;
    winbar = "";
    smartcase = true;
    signcolumn = "yes";
    title = true;
  };
  config.extraPlugins = with pkgs.vimPlugins; [ vim-polyglot ];

}
