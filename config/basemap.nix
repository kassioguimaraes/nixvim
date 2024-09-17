{
  keymaps = [
    {
      action = "<cmd>bdelete<CR>";
      key = "<F4>";
      mode = [ "n" ];
    }

    {
      action = "<cmd>nohlsearch<CR>";
      key = "<esc>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_files<CR>";
      key = "<F1>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<S-F1>";
      mode = [ "n" ];
    }
    {
      action = "<Nop>";
      key = "<F1>";
      mode = [ "i" "c" "v" "s" "x" "t" ];
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<F2>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_files<CR>";
      key = "<F6>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<F7>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<F8>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<F9>";
      mode = [ "n" ];

    }
    {
      action = "<cmd>LazyGit<CR>";
      key = "<F5>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<F3>";
      mode = [ "n" ];
    }
  ];
}
