{ ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [ "quiet" ];
  
  boot.supportedFilesystems = [ "zfs" ];
  boot.zfs.forceImportRoot = false;

  systemd.services.NetworkManager-wait-online.enable = false;
}
