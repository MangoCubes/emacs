{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };
  outputs =
    {
      nixpkgs,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShell.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = [ pkgs.bash ];
      };
    };
}
