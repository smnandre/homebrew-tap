cask "quickemoji" do
  version "1.0.0"
  sha256 "aa0e77a1065dfcb4694b9fee6af8c7d053b4788640064a9a3f13a305344e4cd6"

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
