cask "briefbar" do
  version "0.26.0"
  sha256 "efdc2a142689e3558ebce3c19744b277edf2097644ae92abdbe393130a218f9d"

  url "https://github.com/mnsn/brief-bar/releases/download/v#{version}/BriefBar.zip"
  name "BriefBar"
  desc "Menu bar app showing what needs you in Teams, Azure DevOps and GitHub Copilot"
  homepage "https://github.com/mnsn/brief-bar"

  # A version's tag comes before its release, which waits for a maintainer's approval.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "BriefBar.app"

  uninstall quit: [
    "com.asaf.BriefBar",
    "com.asaf.BriefBar.Updater",
  ]

  zap trash: [
    "~/Library/Application Support/BriefBar",
    "~/Library/Caches/com.asaf.BriefBar",
    "~/Library/Caches/com.asaf.BriefBar.Updater",
    "~/Library/HTTPStorages/com.asaf.BriefBar.Updater",
    "~/Library/HTTPStorages/com.asaf.BriefBar.Updater.binarycookies",
    "~/Library/Preferences/com.asaf.BriefBar.plist",
    "~/Library/Preferences/com.asaf.BriefBar.Updater.plist",
  ]

  caveats <<~EOS
    BriefBar isn't notarized by Apple, so macOS blocks it the first time you open it.
    Click Done, then Open Anyway in System Settings > Privacy & Security.
  EOS
end
