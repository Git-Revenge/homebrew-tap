cask "gitrevenge" do
  version "0.11.0"
  sha256 "6ac7a110219c99ee361ed2ef62879aa4e06904f504df572ad11e0e5d232f65f6"

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
    "~/Library/Caches/com.gitrevenge.gitrevenge",
    "~/Library/Caches/com.risadams.gitrevenge",
    "~/Library/HTTPStorages/com.gitrevenge.gitrevenge",
    "~/Library/HTTPStorages/com.risadams.gitrevenge",
    "~/Library/Preferences/com.gitrevenge.gitrevenge.plist",
    "~/Library/Preferences/com.risadams.gitrevenge.plist",
    "~/Library/Saved Application State/com.gitrevenge.gitrevenge.savedState",
    "~/Library/Saved Application State/com.risadams.gitrevenge.savedState",
    "~/Library/WebKit/com.gitrevenge.gitrevenge",
    "~/Library/WebKit/com.risadams.gitrevenge",
  ]
end
