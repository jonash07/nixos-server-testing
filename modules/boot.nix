{ ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;

    };

    kernelParams = [ "quiet" ];

  };

  systemd.services.NetworkManager-wait-online.enable = false;

}

