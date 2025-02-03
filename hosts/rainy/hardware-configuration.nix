# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/4b3122f8-e9a8-4100-ac7e-c46d42a27a53";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-97d00332-5a63-46ce-b3a6-0efba72802da".device = "/dev/disk/by-uuid/97d00332-5a63-46ce-b3a6-0efba72802da";
  boot.initrd.luks.devices."luks-bec45172-f043-49c3-86f2-a824b192d441".device = "/dev/disk/by-uuid/bec45172-f043-49c3-86f2-a824b192d441";
  fileSystems."/boot/efi" =
    { device = "/dev/disk/by-uuid/2E40-06CC";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/3aa24cbc-12e8-4cfc-9665-a1608dcc53ae"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp12s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp13s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp14s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
