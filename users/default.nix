{ config, pkgs, ... }:

{
  imports = [ <home-manager/nixos> ];

  users.users.luna = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "libvirtd" "audio" ];
    shell = pkgs.fish;
  };

  home-manager.users.luna = (import ./luna/default.nix);
}
