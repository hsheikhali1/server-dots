{ config, pkgs, inputs, ... }: {

  xdg.configFile = {
    nvim = {
      source = config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/nixos/nvim";
      recursive = true;
    };
  };
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = false;
    withRuby = false;
    withPython3 = false;
    defaultEditor = true;
    coc.enable = false;

    extraPackages = with pkgs; [
      gcc
      nixpkgs-fmt
      rustfmt
      shfmt
      stylua
      statix
      luajitPackages.luacheck

      # LSP servers
      nixd
      rust-analyzer
      cargo # sometimes required for rust-analyzer to work
      taplo
      gopls
      lua
      shellcheck
      marksman
      sumneko-lua-language-server
      nodePackages_latest.typescript-language-server
      yaml-language-server

      # other utils and plugin dependencies
      gnumake
      src-cli
      ripgrep
      fd
      sqlite
      lemmy-help
      fzf
      cargo
      cargo-nextest
      clippy
      glow
      mariadb
      imagemagick
    ];

  };

  

}
