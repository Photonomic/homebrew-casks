cask "negative-lab-pro" do
  version "3.0.2"
  sha256 "372c993ab73c790a58bbab241a6db5c299fea11fc63c689e40fc44f6439fd9ae" 

  url "https://negativelabpro.s3-accelerate.amazonaws.com/MAC-NEGATIVE-LAB-PRO-v3.0.2.zip",
      verified: "negativelabpro.s3-accelerate.amazonaws.com"
  name "Negative Lab Pro"
  desc "Software for converting and editing scanned film negatives"
  homepage "https://www.negativelabpro.com"

  # ARM Mac (Apple Silicon) requires Rosetta 2
  if Hardware::CPU.intel?
    installer manual: "Install Negative Lab Pro.pkg"
  else
    depends_on arch: :arm64, macos: ">= :big_sur"
    postflight do
      system_command "/usr/sbin/softwareupdate",
                     args: ["--install-rosetta", "--agree-to-license"],
                     sudo: true
    end

    installer manual: "Install Negative Lab Pro.pkg"
  end

  uninstall pkgutil: "com.negativelabpro.pkg" # Replace this if the identifier is different.

  zap trash: [
    "~/Library/Preferences/com.negativelabpro.plist", # Adjust with the correct preference file if needed
    "~/Library/Application Support/NegativeLabPro" # Update path if necessary
  ]

  caveats <<~EOS
    Negative Lab Pro requires both Adobe Creative Cloud and Adobe Lightroom Classic to be installed.
    Please ensure these applications are installed and updated before using Negative Lab Pro.
  EOS
end
