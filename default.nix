{ pkgs ? (import <nixpkgs> {}), stdenv ? pkgs.stdenv }:

with pkgs;

let
  curl-ssl = curl.override { sslSupport = true; };

  idris2-curl = stdenv.mkDerivation {
    pname = "idris2-curl";
    version = "0.1-alpha";
    src = ./.;

    nativeBuildInputs = [ idris2 ];

    preBuildPhase = ''
      rm -rf build/
    '';

    installPhase = ''
      mkdir -p $out/lib/Network/Curl/Easy
      install build/ttc/Network/Curl/Easy/FFI.ttc  $out/lib/Network/Curl/Easy
      install build/ttc/Network/Curl/Easy/Enum.ttc $out/lib/Network/Curl/Easy
      install build/ttc/Network/Curl/Easy.ttc $out/lib/Network/Curl
    '';

    homepage = "https://github.com/wchresta/idris2-curl";
    description = "Curl bindings for Idris 2";
    meta.license = with stdenv.lib; licenses.bsd3;
  };

  idris2-curl-test = stdenv.mkDerivation {
    pname = "${idris2-curl.pname}-test";
    version = idris2-curl.version;
    src = ./.;

    nativeBuildInputs = [ idris2 idris2-curl makeWrapper ];
    buildInputs = [ curl-ssl.out ];

    preBuildPhase = ''
      rm -rf build/
    '';

    buildFlags = [ "build-test" ];
    buildPhase = ''
      runHook preBuild

      IDRIS2_PATH="$IDRIS2_PATH:${idris2-curl}/lib" make $buildFlags

      runHook postBuild
    '';

    installPhase = ''
      mkdir -p $out/bin
      cp -r build/exec/* $out/bin

      wrapProgram "$out/bin/runTests" \
        --suffix LD_LIBRARY_PATH ':' "${curl-ssl.out}/lib"
    '';
  };
in
  idris2-curl-test

