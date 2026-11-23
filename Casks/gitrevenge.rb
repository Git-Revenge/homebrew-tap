cask "gitrevenge" do
  version "1.1.0"
  sha256 "427519b5ad706e534f59041340bd1bd92a0fbe35598688b4f6d18f6a8a6b6e59"

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
  # The `gitrevenge` command for a terminal. It opens the app the way Finder does, so it
  # returns at once and brings a running Git Revenge forward instead of starting another.
  command_wrapper "gitrevenge",
                  executable: "/usr/bin/open",
                  args:       ["-a", "#{appdir}/Git Revenge.app", "--args"]

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
