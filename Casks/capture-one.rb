cask "capture-one" do
  version "16.5.9.7"
  sha256 "4ad3cd7f9a925174897be51e3ee5e3169b8489782153aa267ad02bd739ecef92" # Update with the correct SHA256 if necessary

  url "https://downloads.captureone.pro/d/mac/0be2350895442f15d22e0696788bd7a8b925a511/CaptureOne.Mac.#{version}.dmg"
  name "Capture One"
  homepage "https://www.captureone.com/"

  app "Capture One.app"

  # Optional: add zap instructions if needed
  zap trash: [
    "~/Library/Application Support/Capture One",
    "~/Library/Preferences/com.captureone.captureone.plist",
    "~/Library/Saved Application State/com.captureone.captureone.savedState",
  ]
end
