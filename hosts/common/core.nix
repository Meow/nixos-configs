{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    tmux
    htop
    nethogs
  ];
}
