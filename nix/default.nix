with import ./pkgs.nix { };
let
  requirements = import ./requirements.nix;
  customPython = requirements.python.buildEnv.override {
    extraLibs = requirements.base ++ requirements.tests ++ requirements.development
    ;
  };
in
mkShell {
  buildInputs = [ customPython ];
}
