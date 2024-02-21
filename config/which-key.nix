{
 plugins.which-key = {
   enable = true;
   registrations = {
   "<leader>f" = "Files";
   "<leader>g" = "Git";
   "<leader>fe" = "Explorer";
   "<leader>fs" = "Save File";
   "<leader>ff" = "Project Files";
   "<leader>fg" = "Grep Files)";
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
      action = "<cmd>Neogit<CR>";
      key = "<leader>g";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Oil<CR>";
      key = "<leader>fe";
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
