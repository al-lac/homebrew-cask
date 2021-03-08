cask "mattermost-desktop" do
  version "4.6.2"
  sha256 "070D15EFC32DFCAD72554AEE9192C6F56828CCDA513B8AF5DB3229BC0FFB3B31"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.dmg"
  appcast "https://docs.mattermost.com/install/desktop.html"
  name "mattermost-desktop"
  desc "Native desktop application for Mattermost."
  homepage "https://mattermost.com/"

  auto_updates true

  app "Mattermost.app"

  zap trash: [
    "~/Library/Logs/Mattermost",
  ]
end
