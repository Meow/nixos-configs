{ config, lib, pkgs, ... }:

{
  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "Luna D.";
    userEmail = "cod7777@yandex.ru";
  };
}
