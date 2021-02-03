{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    tmux
    htop
    nethogs
  ];

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];
}
