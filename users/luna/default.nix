{ config, pkgs, ... }:

{
  imports = [
    ./fish.nix
    ./vscode.nix
  ];

  programs.home-manager.enable = true;

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };
}
