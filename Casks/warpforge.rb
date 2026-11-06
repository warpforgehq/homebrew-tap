cask "warpforge" do
  version "0.28.0"

  on_macos do
    on_arm do
      sha256 "7b75396ce8d9f9da12b92b16718eec5fab0280152bf66fd1483a71fe24a1fba3"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "afae8c5d0efa7f52dbdd61d6ee621ce779405d236c498537d9f4b62730800e11"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "770ec9424daf4d42e3f13a345e847aac2917847dd889004b8619cb77132246d4"
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
