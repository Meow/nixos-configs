{ config, pkgs, ... }: {
  gitOpts = {
    gpgKeyId = "FD47E336269B748A";
    gpgSignCommits = true;
  };
}
