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
    
    # KDE
    gwenview

    #archives
    ark
    zip
    unzip
    p7zip
    xz

    #utils
    flameshot
    nerd-fonts._0xproto
    fzf
    btop
    tree
    wget
    stow
    bash-completion

  ];
   programs.git = {
    enable = true;
    userName = "GalaxAI";
    userEmail = "92019780+GalaxAI@users.noreply.github.com";
  };
  programs.home-manager.enable = true;
}

