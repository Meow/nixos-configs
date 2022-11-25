# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: {
  imports =
    [
      ./hardware-configuration.nix
      /home/luna/code/nixos-configs/hosts/common/options.nix

      ./git.nix

      /home/luna/code/nixos-configs/users
      /home/luna/code/nixos-configs/hosts/common/core.nix
      /home/luna/code/nixos-configs/hosts/common/desktop.nix
      /home/luna/code/nixos-configs/hosts/common/sudo.nix
      /home/luna/code/nixos-configs/hosts/common/wacom.nix
      /home/luna/code/nixos-configs/hosts/common/wine.nix
      /home/luna/code/nixos-configs/hosts/common/gnome.nix
      /home/luna/code/nixos-configs/hosts/common/android.nix
    ];

  nixpkgs.config.allowUnfree = true;
  boot.supportedFilesystems = [ "ntfs" ];

  boot.kernelPackages = pkgs.linuxPackages_6_0;

  boot.kernelParams = [ "iommu=pt" ];

  boot.initrd.luks.devices = {
    root = {
      device = "/dev/disk/by-uuid/77636ca8-422b-4435-b5a9-ad85b0957f4f";
      preLVM = true;
      allowDiscards = true;
    };
  };

  boot.initrd.kernelModules = [ "amdgpu" ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "rainy"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp15s0.useDHCP = true;
  #networking.interfaces.enp9s0.useDHCP = true;
  #networking.interfaces.wlp7s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";
  time.hardwareClockInLocalTime = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    nano
    docker-compose
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  # pinentryFlavor = "gnome3";
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.drivers = with pkgs; [
    gutenprint
    gutenprintBin
    epson-escpr2
  ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Bluetooth for Bluetooth things
  hardware.bluetooth.enable = true;

  # Steam is a pancake
  hardware.opengl.setLdLibraryPath = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.steam-hardware.enable = true;

  # AMD stuff
  hardware.enableRedistributableFirmware = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = false;
  services.xserver.desktopManager.plasma5.enable = false;

  # Docker
  virtualisation.docker.enable = true;
  virtualisation.libvirtd.enable = true;
  networking.firewall.checkReversePath = false;

  # Virtualbox
  # virtualisation.virtualbox.host.enable = true;
  # users.extraGroups.vboxusers.members = [ "luna" ];
  # Disable extensions for now.
  # virtualisation.virtualbox.host.enableExtensionPack = true;

  services.xserver.videoDrivers = [ "amdgpu" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.03"; # Did you read the comment?

}
