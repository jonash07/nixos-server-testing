{ ... }:

{
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.devmon.enable = true;

  services.openssh.enable = true;

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  services.samba = {
    enable = true;
    nmbd.enable = true;
    samba-wsdd.enable = true;
    settings = {
      Share = {
        browseable = "yes";
        comment = "test";
        path = "/storage";
        writeable = "yes";
      };
    };
  };

}

