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
    openFirewall = true;
    discovery = true;
  };

  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      global = {
        security = "user";
        "hosts allow" = "192.168.0.";
        "guest account" = "nobody";
      };
      public = {
        browseable = "yes";
        comment = "test";
        path = "/storage";
        writeable = "yes";
        "guest ok" = "yes";
      };
    };
  };

}

