{ config, lib, pkgs, ... }:

let inherit (import ../../../options.nix) theKernel; in
lib.mkIf (theKernel == "zen") {
  boot.kernelPackages = pkgs.linuxPackages_zen;
  environment.systemPackages = [
    pkgs.linuxKernel.packages.linux_zen.lenovo-legion-module
    pkgs.lenovo-legion
  ];

}
