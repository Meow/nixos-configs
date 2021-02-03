{ config, pkgs, ... }:

{
  home.file = {
    ".config/kitty/kitty.conf".text = ''
      term xterm-256color
    '';
  };
}
