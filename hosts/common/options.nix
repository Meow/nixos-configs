{ config, lib, ... }: with lib; {
  options.gitOpts = {
    gpgKeyId = mkOption rec {
      type = types.str;
      default = "";
      example = default;
      description = "GPG long key ID to use for signing of commits";
    };

    gpgSignCommits = mkEnableOption "Whether or not should git commits be signed on this machine";
  };
}
