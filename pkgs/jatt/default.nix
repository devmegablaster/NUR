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
    i686-linux = "1vzsjrs08lc1l8iw7b6af0fflsy6762f1ns2jpmc1zzr75fwjfak";
    x86_64-linux = "1zdgyhzim28lx2cs1f9phjjpdqbzx9bswkip4vgi5jb75a9gyydc";
    aarch64-linux = "0jla9xp5xkm9r3i1y92mjcmqz5kjgwvbivq72d3hh75b2cpzrffw";
    x86_64-darwin = "1p0bap94bngzvifzzdl62bd26i2jbgnhxwhxk21dscywfkki5zdc";
    aarch64-darwin = "09ij1xf69g0x5i18ihy39xcaqzlhr6q1ikmlbc4js8hlipykhhcn";
  };

  urlMap = {
    i686-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.9/jatt_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.9/jatt_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.9/jatt_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.9/jatt_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.9/jatt_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "jatt";
  version = "0.9";
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
