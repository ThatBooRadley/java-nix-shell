{
  description = "Java dev shell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    version = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages."${version}";
  in {
    devShells."${version}".default = pkgs.mkShell {
      buildInputs = with pkgs; [
        gradle
        jdk
      ];
    };
  };
}
