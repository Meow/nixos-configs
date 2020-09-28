{ config, pkgs, ... }: {

  environment = {
    etc = {
      "sway/machine_specific".text = ''
        set $keyboard_id "4152:5639:SteelSeries_SteelSeries_Apex_M500_Gaming_Keyboard"
        set $mouse_id "4152:4961:La-VIEW_Technology_SteelSeries_Sensei"
      '';
    };
  };

}
