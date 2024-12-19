{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Terminal and dev tools
    # kitty
    pre-commit
    # code-cursor
  ];
}
