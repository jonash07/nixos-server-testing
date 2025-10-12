{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
    wl-clipboard
    lshw
    rar
    zip
    unzip
    ripgrep
    neovim
    ntfs3g
    exfat
    tree
    mtpfs
    librewolf
    btop-cuda
  ];
}

