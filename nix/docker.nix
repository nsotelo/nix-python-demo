with import ./pkgs.nix { };
let
  name = "my-project";

  # Replace myProject with the name of your project.
  myProject = import ./release.nix;

  config =
    writeTextDir
      "/data/configuration.json"
      (builtins.readFile ../configuration.json);
in
dockerTools.buildImage {
  name = name;
  tag = "latest";
  created = "now";
  contents = symlinkJoin {
    name = name;
    paths = [ config myProject ];
  };
  config = {
    Cmd = [ "${myProject}/bin/run" ];
    workingDir = "/data";
  };
}
