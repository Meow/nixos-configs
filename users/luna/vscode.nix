{ config, pkgs, ... }:

{
  programs.vscode.enable = true;

  home.file = {
    ".config/Code/User/settings.json".text = ''
      {
          "explorer.confirmDragAndDrop": false,
          "explorer.confirmDelete": false,
          "editor.tabSize": 2,
          "files.trimFinalNewlines": true,
          "files.insertFinalNewline": true,
          "editor.unicodeHighlight.nonBasicASCII": false
      }
    '';
  };
}
