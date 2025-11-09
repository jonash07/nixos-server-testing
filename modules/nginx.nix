{ ... }:

{
  # services.nginx = {
  #   enable = true;
  #   recommendedTlsSettings = true;
  #   recommendedOptimisation = true;
  #   recommendedGzipSettings = true;
  #   recommendedProxySettings = true;
  #   virtualHosts = {
  #     "jellyfin.local" = {
  #       forceSSL = true;
  #       enableACME = true;
  #       http2 = true;
  #       locations."/" = {
  #         proxyPass = "http://127.0.0.1:8096";
  #         proxyWebsockets = true;
  #       };
  #     };
  #   };
  # };

  # security.acme = {
  #   acceptTerms = true;
  #   defaults.email = "foo@bar.com";
  # };
}

