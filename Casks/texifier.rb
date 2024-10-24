cask "texifier" do
  version "1.9.29,817"
  sha256 :no_check

  url "https://download.texifier.com/apps/osx/updates/Texifier_1_9_29__817__053c1c6.dmg"
  name "Texifier"
  desc "LaTeX editor with advanced features"
  homepage "https://www.texifier.com/"

  app "Texifier.app"

  zap trash: [
    "~/Library/Application Support/Texifier",
    "~/Library/Preferences/com.vallettaventures.Preview.plist",
    "~/Library/Saved Application State/com.vallettaventures.Preview.savedState",
  ]
end
