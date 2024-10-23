cask "capture-one" do
  version "16.4.6.20"
  sha256 "5896b4ce3f4142ec682bfa271a21ed305e11b0ebe755fb7e39f283fe5dbacf4f" # Update with the correct SHA256 if necessary

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
