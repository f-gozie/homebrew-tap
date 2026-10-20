cask "usageos" do
  version "0.1.6"
  sha256 "b17ba5f8922b8ba02b71a9a1f5622a5e93a62944b84a19031c33ba8b55577e6d"

  url "https://github.com/f-gozie/usage-os/releases/download/v#{version}/UsageOS-#{version}-universal.dmg",
      verified: "github.com/f-gozie/usage-os/"
  name "UsageOS"
  desc "Private, on-device time tracker for macOS"
  homepage "https://usageos.app"

  depends_on macos: :ventura

  app "UsageOS.app"

  zap trash: [
    "~/Library/Application Support/com.usageos.app",
  ]
end
