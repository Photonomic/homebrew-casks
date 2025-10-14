cask "negative-lab-pro" do
  version "3.1.1"
  sha256 "2edcb8a1e3a08ba0cb1d9844e01988ed997284a28514db949ddb8b55aecfd9e5"
  
  url "https://negativelabpro.s3-accelerate.amazonaws.com/MAC-NEGATIVE-LAB-PRO-v#{version}.zip",
      verified: "negativelabpro.s3-accelerate.amazonaws.com"
  name "Negative Lab Pro"
  desc "Software for converting and editing scanned film negatives"
  homepage "https://www.negativelabpro.com"

  # ARM Mac (Apple Silicon) requires Rosetta 2
  if Hardware::CPU.intel?
    installer manual: "Install Negative Lab Pro v#{version}.pkg"
  else
    depends_on arch: :arm64, macos: ">= :big_sur"
    postflight do
      system_command "/usr/sbin/softwareupdate",
                     args: ["--install-rosetta", "--agree-to-license"],
                     sudo: true
    end

    installer manual: "Install Negative Lab Pro v#{version}.pkg"
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
