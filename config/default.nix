{
  # Import all your configuration modules here
  imports =
    [ ./colorscheme.nix ./basemap.nix ./plugins.nix ./lsp.nix ./which-key.nix ];
  config.globals.mapleader = " ";
  config.opts = {
    number = true;
    tabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    clipboard = "unnamedplus";
    ignorecase = true;
    winbar = "";
    smartcase = true;
    signcolumn = "yes";
  };
}
