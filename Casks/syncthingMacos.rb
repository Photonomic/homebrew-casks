
class SyncthingMacos < Formula
  desc "Native macOS packaging of Syncthing"
  homepage "https://github.com/syncthing/syncthing-macos"
  url "https://github.com/syncthing/syncthing-macos/releases/download/v1.29.2-1/Syncthing-1.29.2-1.dmg"
  sha256 "90c8466ee81e6b3f87c97891e3488222e59c7983b7c7ec0fc86dfc2e18b644d768bceae91079f15b5653887d229705f47cf95d2741538376062f78dbaefe989b"

  depends_on :macos

  def install
    system "hdiutil", "attach", "Syncthing-1.29.2-1.dmg"
    system "cp", "-r", "/Volumes/Syncthing/Syncthing.app", prefix
    system "hdiutil", "detach", "/Volumes/Syncthing"
  end

  def caveats
    <<~EOS
      Syncthing-macos has been installed. You can launch it from:
        #{prefix}/Syncthing.app
      You may want to move it to /Applications manually.
    EOS
  end

  test do
    system "test", "-d", "#{prefix}/Syncthing.app"
  end
end

