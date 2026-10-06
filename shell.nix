let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    clang
    libllvm

    freetype
    libx11
    libxext
    libxfixes
    libxrandr
    libGL
  ];
}
