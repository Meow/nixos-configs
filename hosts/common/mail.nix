{ config, pkgs, libs, ... }:

{
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    libgnome-keyring
    libsecret
    mailspring
  ];
}
