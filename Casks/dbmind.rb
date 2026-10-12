cask "dbmind" do
  version "1.2.21"

  on_arm do
    sha256 "c576b4e063fd5c5fd6c6d74f84330f8ff0a24ad055b3ca7eeb0254ee2747ded5"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cde46b95ffc194b21ec464509026f0e783df02230ef8be7b27dfbe8c168dc2a7"
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