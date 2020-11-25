{ config, pkgs, ... }: {

  environment = {
    etc = {
      "sway/machine_specific".text = ''
        set $keyboard_id "6940:6985:Corsair_CORSAIR_K70_RGB_MK.2_Mechanical_Gaming_Keyboard"
        set $mouse_id "4152:4961:La-VIEW_Technology_SteelSeries_Sensei"
      '';
    };
  };

}
