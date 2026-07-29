{ pkgs, ... }:

{
  services.displayManager.ly.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;

  };

  programs.uwsm.enable = true;

  environment.systemPackages = with pkgs; [
    rofi
    hyprcursor
    rose-pine-hyprcursor
  ];

}

