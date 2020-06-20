{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  home.file = {
    ".config/fish/functions/fish_greeting.fish".text = ''
      function fish_greeting;end
    '';

    ".config/fish/conf.d/gpg.fish".text = ''
      set -x GPG_TTY (tty)
    '';
  };
}
