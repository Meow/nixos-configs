{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    chromium
    steam
  ];

  xdg.mime.enable = true;
}
