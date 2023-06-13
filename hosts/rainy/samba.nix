{ config, pkgs, ... }: {
  fileSystems."/mnt/vault" = {
    device = "//192.168.0.100/media";
    fsType = "cifs";
    options = let
      # this line prevents hanging on network split
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in ["${automount_opts},credentials=/home/luna/.config/smb-secrets,uid=1000,gid=100"];
  };
}
