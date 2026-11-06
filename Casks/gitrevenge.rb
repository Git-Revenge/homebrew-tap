cask "gitrevenge" do
  version "0.10.0"
  sha256 "e4a9dedc4e2b0d45a9aab4146e5ea2f665f5222bf23a04e7c9d0f6dfe93f76a0"

  url "https://github.com/Git-Revenge/GitRevenge/releases/download/v#{version}/GitRevenge-#{version}-macos-universal.dmg"
  name "Git Revenge"
  desc "Fast, local-only desktop git client for very large repositories"
  homepage "https://gitrevenge.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Git Revenge.app"

  zap trash: [
    "~/Library/Application Support/GitRevenge",
    "~/Library/Caches/com.risadams.gitrevenge",
    "~/Library/HTTPStorages/com.risadams.gitrevenge",
    "~/Library/Preferences/com.risadams.gitrevenge.plist",
    "~/Library/Saved Application State/com.risadams.gitrevenge.savedState",
    "~/Library/WebKit/com.risadams.gitrevenge",
  ]
end
