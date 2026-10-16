cask "onebox" do
  version "0.3.7"
  sha256 "65b41d66f51bfa2580957df08c9588548a3f24da5ba73f1672e547b5493b0b6c"

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
