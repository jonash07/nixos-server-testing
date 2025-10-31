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

  services.openssh.enable = true;

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  services.samba-wsdd = {
    enable = true;
    discovery = true;
  };

  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      Share = {
        browseable = "yes";
        comment = "test";
        path = "/storage";
        writeable = "yes";
        "guest ok" = "yes";
      };
    };
  };

}

