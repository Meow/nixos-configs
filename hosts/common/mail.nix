{ config, pkgs, libs, ... }:

{
  services.gnome3.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    libgnome-keyring
    libsecret
    mailspring
  ];
}
