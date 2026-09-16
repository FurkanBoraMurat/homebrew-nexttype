cask "nexttype" do
  version "0.1.0"
  sha256 "a589ea73bed72ee17064444371162e0522f85a8428cb9dab8b682cb6274aa73c"

  url "https://github.com/FurkanBoraMurat/nexttype-releases/releases/download/v#{version}/NextType_#{version}_universal.dmg"
  name "NextType"
  desc "Dictation app that types what you say"
  homepage "https://nexttype.tools/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "NextType.app"

  zap trash: [
    "~/Library/Application Support/tools.nexttype.desktop",
    "~/Library/Logs/tools.nexttype.desktop",
    "~/Library/LaunchAgents/NextType.plist",
  ]
end
