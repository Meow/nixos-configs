{ config, pkgs, stdenv, lib, ... }:

{
  home.packages = with pkgs; [
    # gnome3 apps
    gnome3.eog    # image viewer
    gnome3.evince # pdf reader

    # desktop look & feel
    gnome3.gnome-tweak-tool

    # extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
  ];
}
