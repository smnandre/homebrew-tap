cask "symfony-cli-menubar" do
  version "1.0.0"
  sha256 "2c2e2decc8fa6b448bd4a3808654156c368017284a6f1b4ee7639d015d745b27"

  url "https://github.com/smnandre/symfony-cli-menubar/releases/download/v#{version}/SymfonyCLIMenuBar-#{version}.dmg"
  name "Symfony CLI Menu Bar"
  desc "Manage Symfony CLI servers from the menu bar"
  homepage "https://github.com/smnandre/symfony-cli-menubar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SymfonyCLIMenuBar.app"

  uninstall quit: "dev.smnandre.symfony-cli-menubar"

  zap trash: "~/Library/Preferences/dev.smnandre.symfony-cli-menubar.plist"
end
