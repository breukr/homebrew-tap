cask "shotbolt" do
  version "1.2.5"
  sha256 "b6db3cc7cee091fe691f5c71c35e666a0fe332a4449e1599c117fac490ca2c96"

  url "https://github.com/breukr/shotbolt-releases/releases/download/v#{version}/Shotbolt-#{version}.dmg"
  name "Shotbolt"
  desc "Screenshot and screen recording app"
  homepage "https://shotbolt.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Shotbolt.app"

  uninstall quit: "nl.breukr.shotbolt"

  zap trash: [
    "~/Library/Application Support/Shotbolt",
    "~/Library/Caches/nl.breukr.shotbolt",
    "~/Library/HTTPStorages/nl.breukr.shotbolt",
    "~/Library/Preferences/nl.breukr.shotbolt.plist",
    "~/Library/Saved Application State/nl.breukr.shotbolt.savedState",
  ]
end
