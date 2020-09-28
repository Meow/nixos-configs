{ config, pkgs, ... }:

{
  imports = [
    ./fish
  ];

  # programs.home-manager.enable = true;

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };
}
