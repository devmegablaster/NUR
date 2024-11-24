# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, lib
, fetchurl
, installShellFiles
, stdenvNoCC
}:
let
  shaMap = {
    i686-linux = "1iy880l5k1x3kwz8may30njxbnjd3jwzfapxmz8zry74nzgmm8yb";
    x86_64-linux = "0h9lc52gr28y67la428bzk1cgr50nvkicvjlk1v0zhdpbkfqd1my";
    aarch64-linux = "199j4ak7ykzg7dschfbyd7lhfi8yfndnnbk6in1bhdlq2pbb3gn0";
    x86_64-darwin = "1pdm6mq85fcbnd474piyl91m7q5396wq3jpc7hbbmn65i604nlyp";
    aarch64-darwin = "1azdk9qshb3y805lp7bj8fnd7zkaw4vdgh5n6wwh9r3g0ji8qi8n";
  };

  urlMap = {
    i686-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "jatt";
  version = "0.7";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./jatt $out/bin/jatt
  '';

  system = system;

  meta = {
    homepage = "https://github.com/devmegablaster/jatt";

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
