{ config, pkgs, stdenv, lib, ... }:

{
  home.packages = with pkgs; [
    # gnome3 apps
    gnome.eog    # image viewer
    gnome.evince # pdf reader

    # desktop look & feel
    gnome.gnome-tweak-tool

    # extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
  ];
}
