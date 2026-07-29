{ ... }:

{
  services.openssh.enable = true;

  services.udisks2.enable = true;

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

  };

}

