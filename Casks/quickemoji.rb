cask "quickemoji" do
  version "1.0.1"
  sha256 "3e54e7f9a0d71f201314225f422882f11a4bc513c82a04283067f89779f4711d"

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
