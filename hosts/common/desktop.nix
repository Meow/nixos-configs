{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    discord
    tdesktop
    slack
    chromium
    steam
    thunderbird
    teams
  ];
}
