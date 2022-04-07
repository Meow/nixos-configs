{ config, pkgs, ... }: {
  gitOpts = {
    gpgKeyId = "4B1C63448394F688";
    gpgSignCommits = true;
  };
}
