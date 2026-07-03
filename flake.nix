{
  description = "Development environment for a C# Github Application";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-25.11";
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Added unstable
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, nixpkgs-unstable, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system}; # Bound unstable packages
        
        dependencies = [
          pkgs-unstable.dotnet-sdk_10 # Swapped to unstable version
          pkgs.just
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          name = "space-station-14-devshell";
          
          buildInputs = [ pkgs.gtk3 ];
          packages = dependencies;
          
          shellHook = ''
            export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath dependencies}
            export DOTNET_ROOT=${pkgs-unstable.dotnet-sdk_10}
          '';
        };
      }
    );
}
