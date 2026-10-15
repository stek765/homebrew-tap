cask "onebox" do
  version "0.3.4"
  sha256 "b0251606ed5d4c6f1aa5d8ebd12cc409187307310e8759293b3e24dceeb12564"

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
