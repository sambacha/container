{ pkgs ? import <nixpkgs> {} }:

pkgs.python3Packages.buildPythonApplication {
  pname = "app";
  src = ./module;
  version = "0.1.0";
  propagatedBuildInputs = [ pkgs.python3Packages.flask ];
}
