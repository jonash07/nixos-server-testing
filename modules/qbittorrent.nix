{ ... }:

{
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    serverConfig = {
      LegalNotice.Accepted = true;
      Preferences = {
        WebUI = {
          Username = "jim";
          Password_PBKDF2 = "@ByteArray(kcxCkiIFgaQRJGaxxkhvIA==:kXMBQxAS9CCMN3V85moqAWjadROEIutOnQZCcIPubIbC8gARjnvE/WRK0MpXHKThdDYmLbdzNMuvJdfM/f0E2A==)";
        };

      };
    };
  };

}
