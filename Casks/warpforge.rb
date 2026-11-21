cask "warpforge" do
  version "0.31.1"

  on_macos do
    on_arm do
      sha256 "d64416be313cccc3df99cd859a79db0c2cc9257756712ee5f653c5c555d4f1b2"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
    end
    on_intel do
      sha256 "7e1d751f62ac0c61bf575e67837f396da906334bf9f4104bee2f05ff294faac4"
      url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_x64.dmg"
    end
  end
  on_linux do
    sha256 "824b4eb845fac0b4411dc4baebe2edf4192af8ddfad6f3dcd23646e8199f42f3"
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
