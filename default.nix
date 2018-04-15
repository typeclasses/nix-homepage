let
  pkgs = import <nixpkgs> {
    config = {
      allowUnfree = true;
    };
  };
in
{
  nix-demo-site = pkgs.runCommand "nix-demo-site" { } ''
    mkdir --parents $out
    cat ${./nix.scss} | ${pkgs.sassc}/bin/sassc > $out/nix.css
    ln -s ${./index.html} $out/index.html
    ln -s ${./logo.png} $out/logo.png
  '';
}
