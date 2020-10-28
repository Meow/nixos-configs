{ config, pkgs, ... }:

{
  imports = [
    ./waybar
    ./fish.nix
    ./vscode.nix
    ./git.nix
  ];

  programs.home-manager.enable = true;

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };
}
