{ config, lib, pkgs, nixosConfig, ... }: {
  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "Luna D.";
    userEmail = "luna@nighty.cloud";
    signing.key = nixosConfig.gitOpts.gpgKeyId;
    signing.signByDefault = nixosConfig.gitOpts.gpgSignCommits;
  };
}
