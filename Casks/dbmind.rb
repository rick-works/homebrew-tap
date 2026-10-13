cask "dbmind" do
  version "1.2.22"

  on_arm do
    sha256 "64965238ea4d5b10338c2b4421a2feaed2c1cf685b0ff01de1b6bb7f762bd0e9"
    url "https://github.com/rick-works/dbmind/releases/download/v#{version}/DBmind_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "beff6f85988ab739cd61d36d75969f9eb9240843d8f5aba8c18a3b80e8baf07b"
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