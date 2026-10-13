cask "easyvox" do
  version "0.1.0"
  sha256 "a6fcda2c7e38f559db861b23573e7cb169e4103591a9ae32dca97df4a6f0b674"

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
