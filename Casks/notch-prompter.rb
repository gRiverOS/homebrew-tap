cask "notch-prompter" do
  version "0.3.1"
  sha256 "726dfc52ac969322390f73a86a3ec9c8e653812bf1e119cacacfa512146556be"

  url "https://github.com/gRiverOS/notch-prompter/releases/download/v#{version}/NotchPrompter-#{version}.zip"
  name "NotchPrompter"
  desc "Teleprompter that hangs from the MacBook notch"
  homepage "https://github.com/gRiverOS/notch-prompter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NotchPrompter.app"

  uninstall quit: "cl.gustavo.NotchPrompter"

  zap trash: [
    "~/Library/Caches/cl.gustavo.NotchPrompter",
    "~/Library/HTTPStorages/cl.gustavo.NotchPrompter",
    "~/Library/Preferences/cl.gustavo.NotchPrompter.plist",
    "~/Library/Saved Application State/cl.gustavo.NotchPrompter.savedState",
  ]
end
