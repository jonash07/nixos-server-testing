{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    fastfetch
    wl-clipboard
    lshw
    rar
    zip
    unzip
    ripgrep
    ntfs3g
    exfat
    tree
    btop-cuda
    btrfs-progs
    firefox
    xfburn
  
  ];

}

