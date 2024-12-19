{ config, pkgs, ... }:

{
  imports = [ 
    ./programming/tools.nix
    ./programming/python.nix
  ];
  
  nixpkgs.config.allowUnfree = true;

  home.username = "billy";
  home.homeDirectory = "/home/billy";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [

    #misc
    fastfetch
    discord-canary

    #archives
    zip
    unzip
    p7zip
    xz

    #utils
    fzf
    btop
    tree
    wget
  ];
   programs.bash ={
    enable = true;
   };
   programs.git = {
    enable = true;
    userName = "GalaxAI";
    userEmail = "92019780+GalaxAI@users.noreply.github.com";
  };
  programs.home-manager.enable = true;
}

