cask "warpforge" do
  version "0.29.0"

  on_macos do
    on_arm do
      sha256 "86f61c14389065af8637fd3b14ce52ccbf46ef211e63da51250336039839a06c"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "a40080146b69868510d2ff892034b4c671a961fbd72fb39d92fe60868eaaa1b5"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "7360584bfc65e975a0c93fccff9981e63c9abaa38873298d6a65e12c83b245c0"
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
