This is a minimal working example for using python with nix, more information can be found [here](https://sotelo.dev/blog/nix-for-pythonistas). You can

* Run a development environment using

```bash
nix-shell nix/
```

* Package the project with

```bash
nix-build nix/release.nix
```

* Build a docker image using

```bash
nix-build nix/docker.nix
```
