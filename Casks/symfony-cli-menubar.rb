cask "symfony-cli-menubar" do
  version "1.0.1"
  sha256 "128698bd0af1261776f5bf7198472ef4cf594c38b0075e36df7f9a66f1c89270"

  url "https://github.com/smnandre/symfony-cli-menubar/releases/download/v#{version}/SymfonyCLIMenuBar-#{version}.dmg"
  name "Symfony CLI Menu Bar"
  desc "Manage Symfony CLI servers from the menu bar"
  homepage "https://smnand.re/sfmenubar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SymfonyCLIMenuBar.app"

  uninstall quit: "dev.smnandre.symfony-cli-menubar"

  zap trash: "~/Library/Preferences/dev.smnandre.symfony-cli-menubar.plist"
end
