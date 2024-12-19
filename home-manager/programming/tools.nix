{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Terminal and dev tools
    # kitty
    # code-cursor
    pre-commit
  ];
}
