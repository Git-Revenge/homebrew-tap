cask "gitrevenge" do
  version "1.0.0"
  sha256 "14c37270031b55679c9bddc99ecfbb52c25a8ddc00157cc03fd85296925bcfe3"

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
