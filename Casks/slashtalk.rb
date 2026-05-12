cask "slashtalk" do
  version "0.4.0"
  sha256 "9e7b71c6761b21ed423b9cfb4a92b834f55ef1876129c9ad9f1327bffa99d87f"

  url "https://github.com/HereNotThere/slashtalk/releases/download/%40slashtalk/electron%40#{version}/Slashtalk-mac-arm64.dmg",
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
  depends_on arch: :arm64
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
