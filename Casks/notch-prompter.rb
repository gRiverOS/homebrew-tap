cask "notch-prompter" do
  version "0.3.0"
  sha256 "38b057eebbb6fc00e3e7f6fe7f00c8b0a76c7c2ba200c64fd43e9c5e6e86533a"

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
