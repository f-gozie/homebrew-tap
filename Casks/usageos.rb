cask "usageos" do
  version "0.1.3"
  sha256 "95504fcfc4cfdf0c457da6beda144a263e6171b1ff5e2ff2afd7e6f9cca57888"

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
