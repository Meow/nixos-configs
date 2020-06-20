{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    discord
    chromium
    steam
    vscode
  ];
}
