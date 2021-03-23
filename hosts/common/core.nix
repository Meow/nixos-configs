{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    tmux
    htop
    iotop
    nethogs
    neofetch
  ];

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" "8.8.8.8" "8.8.4.4" ];
}
