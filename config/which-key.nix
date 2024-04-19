{
  plugins.which-key = {
    enable = true;
    registrations = {
      "<leader>." = "Terminal";
      "<leader>c" = "Command";
      "<leader>q" = "Quit";
      "<leader>f" = "Files";
      "<leader>g" = "Lsp";
      "<leader>gh" = "Show Documentation";
      "<leader>gd" = "Go to Definition";
      "<leader>go" = "Outline";
      "<leader>ge" = "File Errors";
      "<leader>gE" = "Project Errors";
      "<leader>gr" = "Rename Symbol";
      "<leader>ga" = "Code Actions";
      "<leader>fe" = "Explorer";
      "<leader>fu" = "Undo Tree";
      "<leader>fs" = "Save File";
      "<leader>ff" = "Project Files";
      "<leader>fg" = "Grep Files";
      "<leader>fd" = "Close File";
      "<leader>fF" = "Find Files";
      "<leader>s" = "Grep buffer";
      "<leader>w" = "Window";
      "<leader>wi" = "Swap window";
      "<leader>ws" = "Split vertically";
      "<leader>wv" = "Split horizontally";
      "<leader>wj" = "Move Down";
      "<leader>wk" = "Move Up";
      "<leader>wh" = "Move Left";
      "<leader>wl" = "Move Right";
      "<leader>wJ" = "Decrease Height";
      "<leader>wK" = "Increase Height";
      "<leader>wH" = "Decrease Width";
      "<leader>wL" = "Increase Width";
      "<leader>wd" = "Close Pane";
      "<leader>wq" = "Quit Vim";
    };
  };
  keymaps = [
    {
      action = "<cmd>Lspsaga term_toggle<CR>";
      key = "<A-.>";
      mode = [ "n" "t" ];
    }
    {
      action = "<cmd>qall<CR>";
      key = "<leader>q";
      mode = [ "n" ];
    }
    {
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      key = "<leader>gd";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga hover_doc<CR>";
      key = "<leader>gh";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga rename<CR>";
      key = "<leader>gr";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga code_action<CR>";
      key = "<leader>ga";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga outline<CR>";
      key = "<leader>go";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga show_buf_diagnostics<CR>";
      key = "<leader>ge";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga show_workspace_diagnostics<CR>";
      key = "<leader>gE";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Lspsaga finder<CR>";
      key = "<leader>gf";
      mode = [ "n" ];
    }
    {
      action = ":";
      key = "<leader>c";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Oil<CR>";
      key = "<leader>fe";
      mode = [ "n" ];
    }
    {
      action = "<cmd>UndotreeToggle<CR>";
      key = "<leader>fu";
      mode = [ "n" ];
    }
    {
      action = "<cmd>bdelete<CR>";
      key = "<leader>fd";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_files<CR>";
      key = "<leader>ff";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>fF";
      mode = [ "n" ];
    }
    {
      action = "<cmd>w<CR>";
      key = "<leader>fs";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      key = "<leader>s";
      mode = [ "n" ];
    }
    {
      action = "<cmd>vsp+1<CR>";
      key = "<leader>ws";
      mode = [ "n" ];
    }
    {
      action = "<cmd>sp+1<CR>";
      key = "<leader>wv";
      mode = [ "n" ];
    }
    {
      action = "<C-W>j";
      key = "<leader>wj";
      mode = [ "n" ];
    }
    {
      action = "<C-W>k";
      key = "<leader>wk";
      mode = [ "n" ];
    }
    {
      action = "<C-W>h";
      key = "<leader>wh";
      mode = [ "n" ];
    }
    {
      action = "<C-W>l";
      key = "<leader>wl";
      mode = [ "n" ];
    }
    {
      action = "<cmd>resize -2<CR>";
      key = "<leader>wJ";
      mode = [ "n" ];
    }
    {
      action = "<cmd>resize +2<CR>";
      key = "<leader>wK";
      mode = [ "n" ];
    }
    {
      action = "<cmd>vertical resize -2<CR>";
      key = "<leader>wH";
      mode = [ "n" ];
    }
    {
      action = "<cmd>vertical resize +2<CR>";
      key = "<leader>wL";
      mode = [ "n" ];
    }
    {
      action = "<C-W>r";
      key = "<leader>wi";
      mode = [ "n" ];
    }
    {
      action = "<C-W>q";
      key = "<leader>wd";
      mode = [ "n" ];
    }
    {
      action = "<cmd>q<CR>";
      key = "<leader>wq";
      mode = [ "n" ];
    }
  ];
}
