cask "warpforge" do
  version "0.30.0"

  on_macos do
    on_arm do
      sha256 "a2976d941994c3a7a3c2abc6a46d33917ddcb7f1084170afdc6567d1ec293359"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "ab5c1cd9dca93c7f06044578976e6dcd0a6cc80e68027d815f29011851db7b40"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "fb761951c7cbcb4e361cc868bc12a53aaa21c948c7f25b6b307981d8501f68c2"
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
