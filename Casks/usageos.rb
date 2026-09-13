cask "usageos" do
  version "0.1.2"
  sha256 "abec6b32452fc5604924dd568be9807df841c60d7016ffe3f75501c370bcdd10"

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
