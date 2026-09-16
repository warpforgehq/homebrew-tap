cask "warpforge" do
  version "0.20.1"

  on_macos do
    sha256 "59ef93d1d08c4324a4695201b79bf04b1dbea9fd48e74d3cf85398e92bf833e6"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "e0a13c0dcf6137f08f0b1d950f2a2c7ac03639f8831189d94c8fb166136e41c5"
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
