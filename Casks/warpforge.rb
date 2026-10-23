cask "warpforge" do
  version "0.27.1"

  on_macos do
    on_arm do
      sha256 "62e08e60b94b8a7712a9f1a9887f1620f458b78ab7b8885c4d063171a5732823"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "6c4ae208a902cd51c9f45606beacd0febb98802ec3bcedecd2e805f142047f3f"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "2c9c5b214e4ba2e5c25215819a572fe88708367353d9c44fc3e1d8393db2822d"
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
