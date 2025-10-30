{ ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [ "quiet" ];
  boot.loader.timeout = 1;

  systemd.services.NetworkManager-wait-online.enable = false;
}
