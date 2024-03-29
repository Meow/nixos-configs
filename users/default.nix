{ config, pkgs, ... }:

{
  imports = [ <home-manager/nixos> ];

  programs.fish.enable = true;

  users.users.luna = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "libvirtd" "audio" "sway" ];
    shell = pkgs.fish;
  };

  users.extraGroups.vboxusers.members = [ "luna" "adbusers" ];

  home-manager.users.luna = (import ./luna/default.nix);
}
