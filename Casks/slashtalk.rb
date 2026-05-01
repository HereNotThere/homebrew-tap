cask "slashtalk" do
  version "0.1.6"
  sha256 "cddc79b95c3f3d14755fc859529993875bb268138d1f8dc24dc38c514afcc3eb"

  url "https://github.com/HereNotThere/slashtalk/releases/download/%40slashtalk/electron%40#{version}/Slashtalk-mac-universal.dmg",
      verified: "github.com/HereNotThere/slashtalk/"
  name "Slashtalk"
  desc "Floating dock for coordination without meetings"
  homepage "https://slashtalk.onrender.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{^@slashtalk/electron@(\d+(?:\.\d+)*)$}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Slashtalk.app"

  zap trash: [
    "~/Library/Application Support/Slashtalk",
    "~/Library/Caches/com.slashtalk.desktop",
    "~/Library/Caches/com.slashtalk.desktop.ShipIt",
    "~/Library/HTTPStorages/com.slashtalk.desktop",
    "~/Library/Logs/Slashtalk",
    "~/Library/Preferences/com.slashtalk.desktop.plist",
    "~/Library/Saved Application State/com.slashtalk.desktop.savedState",
  ]
end
