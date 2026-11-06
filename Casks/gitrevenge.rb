cask "gitrevenge" do
  version "0.9.1"
  sha256 "3ce6b2a334ded2a23af3b63da527bb76401064fae2486b4e8780b0679a731992"

  url "https://github.com/Git-Revenge/GitRevenge/releases/download/v#{version}/GitRevenge-#{version}-macos-universal.dmg",
      verified: "github.com/Git-Revenge/GitRevenge/"
  name "Git Revenge"
  desc "Fast, local-only desktop git client for very large repositories"
  homepage "https://gitrevenge.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
