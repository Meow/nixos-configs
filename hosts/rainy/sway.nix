{ config, pkgs, ... }: {

  environment = {
    etc = {
      "sway/machine_specific".text = ''
        set $keyboard_id "6940:6985:Corsair_CORSAIR_K70_RGB_MK.2_Mechanical_Gaming_Keyboard"
        set $mouse_id "6899:1:Kingsis_Peripherals_ZOWIE_Gaming_mouse"

        output HDMI-A-1 mode 1920x1080 position 0 0 scale 1
        output DP-2 mode 1920x1080@240Hz position 1920 0 scale 1 adaptive_sync off
        output DP-3 mode 3840x2160 position 3840 0 scale 2
        
        input $mouse_id pointer_accel -0.5
      '';
    };
  };

}
