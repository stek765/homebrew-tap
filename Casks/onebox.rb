cask "onebox" do
  version "0.3.6"
  sha256 "c5dd91e3cc25b7e3e5732020f3e7a9054f2e61ea28a05a50e609b6218f7acbd5"

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
