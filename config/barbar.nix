{
  plugins.barbar = {
    enable = true;
      settings = {
        icons = {
          modified = { button = "●"; };
          pinned = { button = "⚓"; filename = true; };
        };
      };
    keymaps.goTo1.key = "<A-1>";
    keymaps.goTo2.key = "<A-2>";
    keymaps.goTo3.key = "<A-3>";
    keymaps.goTo4.key = "<A-4>";
    keymaps.goTo5.key = "<A-5>";
    keymaps.previous.key = "<A-a>";
    keymaps.next.key = "<A-d>";
    keymaps.pin.key = "<A-'>";
  };
}
