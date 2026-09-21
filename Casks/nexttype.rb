cask "nexttype" do
  version "0.1.6"
  sha256 "97a5e5d5162a5e1b8e40baa5a2637c53feba71fb6d45e5aa2db3e7749be3e2a1"

  url "https://github.com/FurkanBoraMurat/nexttype-releases/releases/download/v#{version}/NextType_#{version}_universal.dmg"
  name "NextType"
  desc "Dictation app that types what you say"
  homepage "https://nexttype.tools/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "NextType.app"

  zap trash: [
    "~/Library/Application Support/tools.nexttype.desktop",
    "~/Library/Logs/tools.nexttype.desktop",
    "~/Library/LaunchAgents/NextType.plist",
  ]
end
