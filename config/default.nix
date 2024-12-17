{ pkgs, ... }: {
  imports = [
    ./colorscheme.nix
    ./basemap.nix
    ./barbar.nix
    ./plugins.nix
    ./lsp.nix
    ./which-key.nix
    ./org.nix
  ];
  config.globals.mapleader = " ";
  config.opts = {
    syntax = "on";
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

    titlestring = ''nv %{expand("%:h:t")}/%{expand("%:t")}'';
    conceallevel = 2;
    concealcursor = "nc";
  };
  #config.extraPlugins = with pkgs.vimPlugins; [ vim-polyglot ];
  config.autoCmd = [
    {
      command = "set filetype=html";
      pattern = "*.blade.php";
      event = [ "BufRead" "BufNewFile" ];
    }
    {
        command = ''let &titlestring = 'nv ' . expand("%:p:h:t") . '/' . expand("%:t")'';
      event = [ "BufEnter" ];
    }
  ];

}
