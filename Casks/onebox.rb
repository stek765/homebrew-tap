cask "onebox" do
  version "0.3.9"
  sha256 "f48400142acc66b549f4aee635b76fef75330180ec9b914bfc5f05dd54374d33"

  url "https://github.com/stek765/OneBox/releases/download/v#{version}/Onebox-#{version}-arm64.dmg"
  name "Onebox"
  desc "Menu bar app with WhatsApp, Telegram, Slack, Discord, Proton Mail and LinkedIn in one panel"
  homepage "https://github.com/stek765/OneBox"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Onebox.app"

  zap trash: [
    "~/Library/Application Support/onebox",
    "~/Library/Preferences/dev.stek.onebox.plist",
    "~/Library/Saved Application State/dev.stek.onebox.savedState",
  ]
end
