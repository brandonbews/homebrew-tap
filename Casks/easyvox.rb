cask "easyvox" do
  version "0.2.0"
  sha256 "fdbc672a07f0690b84db82176c9ae3279fe4c03cdf114131005497dc7d7c9dbc"

  url "https://github.com/brandonbews/easyvox/releases/download/v#{version}/EasyVox-#{version}.dmg"
  name "EasyVox"
  desc "Fast, local-only speech-to-text"
  homepage "https://easyvox.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "EasyVox.app"

  uninstall quit: "dev.easyvox.EasyVox"

  zap trash: [
    "~/.config/easyvox",
    "~/Library/Application Support/EasyVox",
    "~/Library/Preferences/dev.easyvox.EasyVox.plist",
    "~/Library/Saved Application State/dev.easyvox.EasyVox.savedState",
  ]
end
