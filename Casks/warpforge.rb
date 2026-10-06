cask "warpforge" do
  version "0.24.0"

  on_macos do
    sha256 "230f2daba98dc80285e13286eec6f97b55807c84869e0f75937027ca2b4f301d"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "0fa4fb479f165eb9825a4839e95a4377c4c2bf2c20cd55e9a628bf8fdb2bb8af"
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
