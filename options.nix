# PLEASE READ THE WIKI FOR DETERMINING
# VALUES FOR THIS PAGE. 
# https://gitlab.com/Zaney/zaneyos/-/wikis/Setting-Options

let
  username = "nosamaj";
  hostname = "legion";
  # This is for running NixOS
  # On a tmpfs or root on RAM
  # You Most Like Want This -> false
  impermanence = false; 
  userHome = "/home/${username}";
  flakeDir = if impermanence == false then "${userHome}/zaneyos"
	     else "/nix/persist/etc/nixos/zaneyos";
in {
  # User Variables
  username = "${username}";
  hostname = "${hostname}";
  gitUsername = "James Mason";
  gitEmail = "nosamaj@gmail.com";
  theme = "everforest-dark-hard";
  slickbar = true;
  simplebar = false; # DO NOT ENABLE!
  borderAnim = true;
  browser = "firefox";
  wallpaperGit = "https://gitlab.com/Zaney/my-wallpapers.git"; # This will give you my wallpapers
  # ^ (use as is or replace with your own repo - removing will break the wallsetter script) 
  wallpaperDir = "${userHome}/Pictures/Wallpapers";
  screenshotDir = "${userHome}/Pictures/Screenshots";
  flakeDir = "${flakeDir}";
  terminal = "kitty";

  # System Settings
  clock24h = true;
  theLocale = "en_GB.UTF-8";
  theKBDLayout = "us";
  theSecondKBDLayout = "de";
  theLCVariables = "en_GB.UTF-8";
  theTimezone = "Europe/London";
  theShell = "zsh"; # Possible options: bash, zsh
  theKernel = "zen"; # Possible options: default, latest, lqx, xanmod, zen
  impermanence = "false"; # This should be set to false unless you know what your doing!
  sdl-videodriver = "x11"; # Either x11 or wayland ONLY. Games might require x11 set here
  # For Hybrid Systems intel-nvidia
  # Should Be Used As gpuType
  cpuType = "amd";
  gpuType = "nvidia";

  # Nvidia Hybrid Devices
  # ONLY NEEDED FOR HYBRID
  # SYSTEMS! 
  intel-bus-id = "PCI:35:0:0";
  nvidia-bus-id = "PCI:1::00";

  # Enable / Setup NFS
  nfs = false;
  nfsMountPoint = "/mnt/nas";
  nfsDevice = "nas:/volume1/nas";

  # NTP & HWClock Settings
  ntp = true;
  localHWClock = false;

  # Enable Printer & Scanner Support
  printer = true;

  # Enable Flatpak & Larger Programs
  flatpak = true;
  kdenlive = true;
  blender = true;

  # Enable Support For
  # Logitech Devices
  logitech = true;

  # Enable Terminals
  # If You Disable All You Get Kitty
  wezterm = false;
  alacritty = true;
  kitty = true;

  # Enable Python & PyCharm
  python = true;

}
