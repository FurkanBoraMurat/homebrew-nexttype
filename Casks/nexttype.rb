cask "nexttype" do
  version "0.1.5"
  sha256 "c52f4bae93b7736f047dcffe075d6eea48683c50a62077501595381ecc3ce937"

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
