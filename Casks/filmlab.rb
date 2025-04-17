cask "filmlab" do
  version "3.1.0"
  sha256 :no_check

  url "https://downloads.filmlabapp.com/desktop/FilmLab-3.1.0-universal.dmg"
  name "FilmLab"
  desc "Film photography scanning app"
  homepage "https://www.filmlabapp.com/"

  app "FilmLab.app"

  zap trash: [
    "~/Library/Application Support/FilmLab",
    "~/Library/Preferences/com.filmlabapp.desktop.plist",
    "~/Library/Saved Application State/com.filmlabapp.desktop.savedState",
  ]
end
