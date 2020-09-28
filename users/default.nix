{ config, pkgs, ... }:

{
  # imports = [ <home-manager/nixos> ];

  users.users.luna = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "libvirtd" "audio" "sway" ];
    shell = pkgs.fish;
  };

  users.extraGroups.vboxusers.members = [ "luna" ];

  # home-manager.users.luna = (import ./luna/default.nix);
}
