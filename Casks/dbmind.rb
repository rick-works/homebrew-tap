cask "dbmind" do
  version "1.2.16"

  on_arm do
    sha256 "a40d13143a2c0d8ce6b59d6081e92430bb8b88ba13b72a7547f3ce8ac5c43612"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3a8a9fff7a335d90f7d5bbe92fab982f5086e583c8b4aa32b2e48c1edf64bfd9"
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