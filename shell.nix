let
  pkgs = import <nixpkgs> { };
  lib = pkgs.lib;

  libs = with pkgs; [
    freetype
    libx11
    libxext
    libxfixes
    libxrandr
    libGL
  ];
in
pkgs.mkShellNoCC {
  packages =
    with pkgs;
    [
      clang
      libllvm
    ]
    ++ libs;
  env.LD_LIBRARY_PATH = lib.makeLibraryPath libs;
}
