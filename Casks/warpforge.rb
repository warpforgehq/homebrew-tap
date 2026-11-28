cask "warpforge" do
  version "0.33.1"

  on_macos do
    on_arm do
      sha256 "988bce8030c54f779a783c6c8397814a84bad8ba409c51a307c2361cf13dc68d"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "3944a713886e1e76a135f446d0f835a336c32fa9e0c3f5294246c2481b3f4c17"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "aeeb413191709b84e29d946563f1671d858fc85db31b87d44680258e2529f31f"
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
