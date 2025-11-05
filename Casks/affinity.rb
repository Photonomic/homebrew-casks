cask "affinity-studio" do
  version "latest"
  sha256 "ba0439980f8f04d19fc25f8e32e9c5493af69916e0e9fd461e5e113862b85bb2"

  url "https://downloads.affinity.studio/Affinity.dmg"
  name "Affinity Studio"
  desc "Professional creative suite for vector, raster and layout (macOS)"
  homepage "https://affinity.studio"

  app "Affinity.app"

  caveats do
    <<~EOS
      After installation you can move the app to /Applications if not installed there already.
    EOS
  end

  test do
    system "#{appdir}/Affinity.app/Contents/MacOS/Affinity", "--version"
  end
end
