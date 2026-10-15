cask "onebox" do
  version "0.3.3"
  sha256 "e21eaf9e06e58c2165de068e066bd5279e8866e60e32e6c67fed8b886658a150"

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
