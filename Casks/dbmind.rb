cask "dbmind" do
  version "1.2.18"

  on_arm do
    sha256 "106c729efa48365cdfd2f96f97190efe9d922cac67879fbd478cdf126be119e1"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "60b6c8a4c5175d5f3b692b074063fd361f3b27997a2b97652a7706bdfc45e99f"
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