{
  plugins.barbar = {
    enable = true;
      extraOptions = {
        icons = {
          modified = { button = "●"; };
          pinned = { button = "⚓"; filename = true; };
        };
      };
    keymaps.goTo1 = "<A-1>";
    keymaps.goTo2 = "<A-2>";
    keymaps.goTo3 = "<A-3>";
    keymaps.goTo4 = "<A-4>";
    keymaps.goTo5 = "<A-5>";
    keymaps.movePrevious = "<A-j>";
    keymaps.moveNext = "<A-k>";
    keymaps.pin = "<A-'>";
  };
}
