cask "slashtalk" do
  version "0.4.1"
  sha256 "0bfc59f96b889290228f90efbb4f28336165d1a582dd45261b9f01a3e651c14a"

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
