cask "briefbar" do
  version "0.9.0"
  sha256 "11a3f9c922f0bf7dd43449fcd9ed44a26ead46c473ac012ba474dc5cec053685"

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
  depends_on macos: :sequoia

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
