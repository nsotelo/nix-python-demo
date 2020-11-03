with import ./pkgs.nix { };
let
  requirements = (import ./requirements.nix);
in
requirements.pythonPackages.buildPythonApplication {
  # Requirements for running the tests.
  checkInputs = requirements.tests;

  # Command to run tests.
  test = "pytest";

  # Name of the project, change this to match yours.
  pname = "my-project";

  # Packages that are installed during the build phase and shipped with the final artifact.
  propagatedBuildInputs = requirements.base;

  # Where the source code is stored; can also use pypi or github.
  src = lib.cleanSource ../.;

  version = "1.0.0";
}
