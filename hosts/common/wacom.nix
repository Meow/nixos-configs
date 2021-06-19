{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libwacom
    xf86_input_wacom
  ];

  services.xserver.libinput.enable = true;
  services.xserver.libinput.touchpad.naturalScrolling = false;
  services.xserver.libinput.touchpad.tapping = true;
  services.xserver.libinput.touchpad.disableWhileTyping = true;
  services.xserver.libinput.touchpad.horizontalScrolling = false;
  services.xserver.modules = [ pkgs.xf86_input_wacom ];
  services.xserver.wacom.enable = true;

  #environment.etc."X11/xorg.conf.d/70-wacom.conf".source = ../../configs/wacom/70-wacom.conf;
}
