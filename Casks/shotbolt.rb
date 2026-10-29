cask "shotbolt" do
  version "1.2.4"
  sha256 "aacf5a44e0a62c10784c1056520b2126a818226f735eee2c9b123affb15214e8"

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
