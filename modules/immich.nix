{ ... }:

{
  services.immich = {
    enable = true;
    openFirewall = true;
    host = "0.0.0.0"; # fix for some stupid ass network problem immich created
    mediaLocation = "/external/storage/immich";
    accelerationDevices = null;
  };

  users.users.immich.extraGroups = [ "video" "render" ];

}

