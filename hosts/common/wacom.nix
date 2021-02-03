{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libwacom
    xf86_input_wacom
  ];

  services.xserver.libinput.enable = true;
  services.xserver.libinput.naturalScrolling = false;
  services.xserver.libinput.tapping = true;
  services.xserver.libinput.disableWhileTyping = true;
  services.xserver.libinput.horizontalScrolling = false;
  services.xserver.modules = [ pkgs.xf86_input_wacom ];
  services.xserver.wacom.enable = true;

  #environment.etc."X11/xorg.conf.d/70-wacom.conf".source = ../../configs/wacom/70-wacom.conf;
}
