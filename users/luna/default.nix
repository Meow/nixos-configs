{ config, pkgs, ... }:

{
  imports = [
    ./waybar
    ./fish.nix
    ./vscode.nix
    ./git.nix
    ./gnome.nix
    ./kitty.nix
    ./krita.nix
    ./blender.nix
  ];

  home.packages = with pkgs; [
    htop
    tmux
    neofetch
  ];

  programs.home-manager.enable = true;

  nixpkgs.config = {
    allowBroken = false;
    allowUnfree = true;
  };
}
