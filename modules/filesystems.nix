{ ... }:

{
  fileSystems."/storage" = {
    device = "/dev/disk/by-uuid/ae6c8d55-84ff-43c6-8c3e-f2072dbbe6b6";
    fsType = "btrfs";
    options = [ "noatime" "compression=zstd" ];
  };
}

