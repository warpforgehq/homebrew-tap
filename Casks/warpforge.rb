cask "warpforge" do
  version "0.32.0"

  on_macos do
    on_arm do
      sha256 "fba6739bc8b3c64a1833623c459bcdbbe2034adf241200139739201def3deb5b"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "eeb3c2a932b3874506c3298ddc9a453df9b48a02c6399fe59c6421038a2e24b9"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "015321328bb72f9d0b5fc0fe8ad4796f2ef935add888bab28ec65772b7f02692"
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
