{ ... }:

{
  fileSystems."/storage" = {
    device = "/dev/disk/by-uuid/ae6c8d55-84ff-43c6-8c3e-f2072dbbe6b6";
    fsType = "btrfs";
    options = [ "noatime" "compress=zstd" ];
  };

  fileSystems."/external/backup" = {
    device = "/dev/disk/by-uuid/FE36BD0136BCBC49";
    fsType = "ntfs";
    options = [ "nofail" "systemd.automount" ];
  };

  fileSystems."/external/storage" = {
    device = "/dev/disk/by-uuid/5810F0A010F085F2";
    fsType = "ntfs";
    options = [ "nofail" "systemd.automount" ]; 
  };

  systemd.automounts = [
    {
      where = "/external/backup";
      wantedBy = [ "graphical.target" ];
    }
    {
      where = "/external/storage";
      wantedBy = [ "graphical.target" ];
    }
  ];

}

