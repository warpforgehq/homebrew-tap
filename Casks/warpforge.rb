cask "warpforge" do
  version "0.26.0"

  on_macos do
    sha256 "8bfb93e69f0e76c96d78e06ba241e7ccb65483d1238a2095195055ac5693b20e"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "7afd36f1cc7590375fc828767fac9e7ac776e368d1543dd6fb4671fadf2ae99f"
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
