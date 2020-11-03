with import ./pkgs.nix { };

rec {
  python = python38;

  # A set of packages and functions for building python applications in nix
  pythonPackages = python38Packages;

  # Core requirements
  base = [
    pythonPackages.beautifulsoup4
    pythonPackages.requests
  ];

  # Extra requirements for testing.
  tests = [ pythonPackages.pytest ];

  development = [ pythonPackages.black ];
}
