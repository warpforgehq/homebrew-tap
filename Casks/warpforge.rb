cask "warpforge" do
  version "0.31.0"

  on_macos do
    on_arm do
      sha256 "e2ae0c2a89d01c462d34cb018b796930481a225b44294ba435d236fe4997c748"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "cac3bb920d1b38cc349c0212a07c5ad638b6ae59412ba9403c16547ffa192e55"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "0522e455aeb797ffc792c4811fd0d2046a3704990f9f3df2081e4ffe7632e430"
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
