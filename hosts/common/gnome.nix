{ config, pkgs, lib, ... }:

{
  services = {
    xserver = {
      displayManager.gdm.enable = true;
      displayManager.gdm.wayland = true;
      desktopManager.gnome.enable = true;
    };

    dbus.packages = [ pkgs.dconf ];
    udev.packages = [ pkgs.gnome.gnome-settings-daemon ];
  };
}
