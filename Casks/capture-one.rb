cask "capture-one" do
  version "16.5.9.7"
  sha256 "94052a1f73bb73c512449c22513760578422ee77b800368346303eb2" # Update with the correct SHA256 if necessary

  url "https://downloads.captureone.pro/d/mac/0be2350895442f15d22e0696788bd7a8b925a511/CaptureOne.Mac.#{version}.dmg"
  url "https://downloads.captureone.pro/d/mac/c84373c979835f35670946c106f170a9018ca0cc/CaptureOne.Mac.#{version}.dmg"
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
