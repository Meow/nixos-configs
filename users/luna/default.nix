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
    ./krita.nix
    ./blender.nix
  ];

  manual.html.enable = false;
  manual.manpages.enable = false;
  manual.json.enable = false;

  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    unstable.discord
    tdesktop
    slack
    thunderbird
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
