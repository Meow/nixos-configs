{ config, pkgs, ... }:

let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/master)
    { config = config.nixpkgs.config; };
in
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

  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    unstable.discord
    tdesktop
    slack
    thunderbird
    teams
    protonmail-bridge
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
