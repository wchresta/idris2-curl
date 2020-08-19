{ pkgs ? import <nixpkgs> {} }:

let
  idris2-curl = import ./default.nix { inherit pkgs; };
in
  pkgs.mkShell {
    buildInputs = [ idris2-curl ];
  }

