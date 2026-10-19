cask "usageos" do
  version "0.1.5"
  sha256 "d2c23b78c8d666197c62771b15e7dab6557a9a53dbe6eac95864854df1b15f87"

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
