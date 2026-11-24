cask "warpforge" do
  version "0.32.1"

  on_macos do
    on_arm do
      sha256 "8cf42817ae86f4c63f7d2d557aea75925fc743cbf2f4b90f897b163ab07f4be3"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "1dd779efc1b6b73c94ee8d71940889cfdb52b4ff5b53f606b79ffb1f9e6cd60d"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "b648924af51df6bdfdbb655dd5826ca55bacfdf31a407ab2a739d376e2ffb766"
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
