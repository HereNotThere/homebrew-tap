cask "slashtalk" do
  version "0.3.0"
  sha256 "3715e8fcc13eb4b7935d353739a8558a60d7f80b3dcbcc558cd1131bd02db034"

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
