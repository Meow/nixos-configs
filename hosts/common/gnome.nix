{ config, pkgs, lib, ... }:

{
  services = {
    xserver = {
      displayManager.gdm.enable = true;
      displayManager.gdm.wayland = true;
      desktopManager.gnome3.enable = true;
    };

    dbus.packages = [ pkgs.gnome3.dconf ];
    udev.packages = [ pkgs.gnome3.gnome-settings-daemon ];
  };
}
