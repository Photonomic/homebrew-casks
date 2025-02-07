
cask "syncthing-macos" do
  version "1.29.2-1"
  sha256 "9b31bb415893e9a52250e6885d595c2e72de6c4ec9e0ad3f0ad01d172c1a585c"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  name "Syncthing for macOS"
  desc "Native macOS packaging of Syncthing"
  homepage "https://github.com/syncthing/syncthing-macos"

  app "Syncthing.app"

  caveats do
    "You may want to move Syncthing.app to /Applications manually."
  end
end
