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

  services.udisks2.enable = true;

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
        "map to guest" = "bad password";
      };
      Magazyn = {
        browseable = "yes";
        path = "/storage";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";
      };
      Zewnetrzny = {
        browseable = "yes";
        path = "/storage";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";
      };
    };
  };

  services.avahi.enable = true;

}

