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
        path = "/storage";
        browseable = "yes";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";

      };

      Zewnetrzny = {
        path = "/external/storage";
        browseable = "yes";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";

      };

      Torrent = {
        path = "/var/lib/qBittorrent/qBittorrent/downloads";
        browseable = "yes";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";

      };

    };

  };

}

