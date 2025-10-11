{ ... }:

{
  users.users.patchouli = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}

