{ config, pkgs, lib, ... }:

{
  services = {
    xserver = {
      displayManager.gdm.enable = true;
      displayManager.gdm.wayland = false;
      desktopManager.gnome.enable = true;
    };

    dbus.packages = [ pkgs.dconf ];
    udev.packages = [ pkgs.gnome.gnome-settings-daemon ];
  };

  environment.systemPackages = [
    pkgs.gnomeExtensions.appindicator
  ];
}
