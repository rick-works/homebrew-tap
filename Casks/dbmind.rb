cask "dbmind" do
  version "1.2.33"

  on_arm do
    sha256 "67d6dc28583e8354e35d9bb4f0e84a1ab77d7daedf9ae6b4e1c74812f09617f0"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1879aee2a59a8a622ffc1c2de214009ded77e366867bdfc0e79f432b9b407754"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_x64.dmg"
  end

  name "DBmind"
  desc "Database client with AI: MySQL, PostgreSQL, Oracle, ClickHouse, Redis, MongoDB and more"
  homepage "https://github.com/rick-works/dbmind"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DBmind.app"

  zap trash: [
    "~/.dbmind",
    "~/Library/Application Support/com.dbmind.desktop",
    "~/Library/Caches/com.dbmind.desktop",
    "~/Library/Preferences/com.dbmind.desktop.plist",
  ]
end