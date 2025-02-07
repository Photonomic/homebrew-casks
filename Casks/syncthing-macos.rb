
cask "syncthing-macos" do
  version "1.29.2-1"
  sha256 "90c8466ee81e6b3f87c97891e3488222e59c7983b7c7ec0fc86dfc2e18b644d768bceae91079f15b5653887d229705f47cf95d2741538376062f78dbaefe989b"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  name "Syncthing for macOS"
  desc "Native macOS packaging of Syncthing"
  homepage "https://github.com/syncthing/syncthing-macos"

  app "Syncthing.app"

  caveats do
    "You may want to move Syncthing.app to /Applications manually."
  end
end
