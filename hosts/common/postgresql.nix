{ config, pkgs, lib, ... }:

{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_12;
    enableTCPIP = true;
    authentication = lib.mkForce ''
      # Generated file; do not edit!
      # TYPE  DATABASE        USER            ADDRESS                 METHOD
      local   all             all                                     trust
      host    all             all             127.0.0.1/32            trust
      host    all             all             ::1/128                 trust
    '';
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE USER luna WITH createdb PASSWORD 'luna';
      CREATE DATABASE luna;
      GRANT ALL PRIVILEGES ON DATABASE luna TO luna;
    '';
  };
}
