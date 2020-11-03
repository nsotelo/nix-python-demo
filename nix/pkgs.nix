import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixpkgs-20.09";

  # Latest tagged version
  url = "https://github.com/NixOS/nixpkgs/archive/20.09.tar.gz";

  # Put a random string here and the nix interpreter will tell you the expected hash.
  sha256 = "1wg61h4gndm3vcprdcg7rc4s1v3jkm5xd7lw8r2f67w502y94gcy";
})
