cask "warpforge" do
  version "0.22.0"

  on_macos do
    sha256 "a8008ad9ad75a3cb64a9adcadf0affc9e4ff45ed84b2e14d36a29f1ed6a496ab"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "d316693b5cefaee180d0681bb4afc08e8ba32dd49029b27e01dd8f5bf077dde1"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_amd64.AppImage"
  end

  name "Warpforge"
  desc "Workspace orchestrator with embedded agent terminals"
  homepage "https://github.com/warpforgehq/warpforge"

  livecheck do
    url :stable
    strategy :github_latest
  end

  auto_updates true
  app "Warpforge.app" if OS.mac?
  binary "Warpforge_\#{version}_amd64.AppImage", target: "warpforge" if OS.linux?
end
