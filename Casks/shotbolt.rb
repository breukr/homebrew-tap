cask "shotbolt" do
  version "1.2.3"
  sha256 "a1f1e55a8be534f2c9a1fbf29035b349acf36f37af1b9219ba8cd5997b3771cd"

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
