cask "shotbolt" do
  version "1.2.2"
  sha256 "758c3df38b5c9eba58f566c0fc24396b22599ab3becee665cb02549d7ee79265"

  url "https://github.com/breukr/shotbolt-releases/releases/download/v#{version}/Shotbolt-#{version}.dmg",
      verified: "github.com/breukr/shotbolt-releases/"
  name "Shotbolt"
  desc "Screenshot and screen recording app"
  homepage "https://shotbolt.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

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
