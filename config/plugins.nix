{
   plugins = {
     neogit = {
       enable = true;
       useMagitKeybindings = true;
     };
     telescope = {
       enable = true;
       keymaps = {
       "<F1>" = {
         action = "git_files";
         desc = "Telescope git Files";
         };
       "<s-F1>" = {
         action = "find_files";
         desc = "Telescope find Files";
         };
       "<F2>" = {
         action = "live_grep";
         desc = "Telescope grep project";
         };
       };
     };
     oil = {
       enable = true;
       defaultFileExplorer = true;
       deleteToTrash = true;
       skipConfirmForSimpleEdits = true;
     };

     cursorline.enable = true;
     surround.enable = true;
     undotree.enable = true;
     treesitter.enable = true;
     lastplace.enable = true;
     better-escape = {
       enable = true;
       mapping = ["jj"];
     };
     copilot-lua = {
     enable = true;
         filetypes = { "*" = true; };
     suggestion.enabled = false;
     panel.enabled = false;
     };

   };

}
