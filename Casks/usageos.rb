cask "usageos" do
  version "0.1.0"
  sha256 "2daa59cad382deedc7a5c0e79c79e5318445eb764eb917259d6a79679fe84dbb"

  url "https://github.com/f-gozie/usage-os/releases/download/v#{version}/UsageOS-#{version}-universal.dmg",
      verified: "github.com/f-gozie/usage-os/"
  name "UsageOS"
  desc "Private, on-device time tracker for macOS"
  homepage "https://usageos.app"

  depends_on macos: ">= :ventura"

  app "UsageOS.app"

  zap trash: [
    "~/Library/Application Support/com.usageos.app",
  ]
end
