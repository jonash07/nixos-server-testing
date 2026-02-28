{ ... }:

{
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
        path = "/external/storage";
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

