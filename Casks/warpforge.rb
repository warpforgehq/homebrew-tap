cask "warpforge" do
  version "0.33.0"

  on_macos do
    on_arm do
      sha256 "07d13df5fabbccedebb91ef7a2ccd402c9715ecbd0d93a8348ce9208717ec6a6"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "43a87437ce1c479ea7a1ccc3ff8958eec3e0197ec5377bfc112bebbf2f78cb57"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "6154896b89ccee29c3bf7a5037fe5a077656207a9bf324be9a0e8d8f4a24a641"
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
