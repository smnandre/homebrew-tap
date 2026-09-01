cask "quickemoji" do
  version "0.1.0"
  sha256 "311e234dc73702e5ad356800f0bdfc2681c69208f9295081b731a792a87a8a59"

  url "https://github.com/smnandre/QuickEmoji/releases/download/v#{version}/QuickEmoji-#{version}.dmg"
  name "QuickEmoji"
  desc "Fast emoji and special character picker"
  homepage "https://smnand.re/quickemoji"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "QuickEmoji.app"

  uninstall quit: "dev.smnandre.quickemoji"

  zap trash: [
    "~/Library/Application Support/QuickEmoji",
    "~/Library/Preferences/dev.smnandre.quickemoji.plist",
  ]
end
