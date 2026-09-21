cask "nexttype" do
  version "0.1.7"
  sha256 "ca463ba99276d9060617fd9dde5ed8fc1c36b0e0222b0a055e8db140de27281e"

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
