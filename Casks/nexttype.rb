cask "nexttype" do
  version "0.1.10"
  sha256 "bc73997fa17c09420ead7576a8ac731f0779fa1c8f6d8cc1d5bbf0bb34218fd8"

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
