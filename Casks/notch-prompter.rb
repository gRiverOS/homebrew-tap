cask "notch-prompter" do
  version "0.1.0"
  sha256 "c234a0cc946b26b6077928e6c7444c05b34c38ab0b1d353eadec499fc22dd658"

  url "https://github.com/gRiverOS/notch-prompter/releases/download/v#{version}/NotchPrompter-#{version}.zip"
  name "NotchPrompter"
  desc "Teleprompter that hangs from the MacBook notch"
  homepage "https://github.com/gRiverOS/notch-prompter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "NotchPrompter.app"

  uninstall quit: "cl.gustavo.NotchPrompter"

  zap trash: [
    "~/Library/Caches/cl.gustavo.NotchPrompter",
    "~/Library/HTTPStorages/cl.gustavo.NotchPrompter",
    "~/Library/Preferences/cl.gustavo.NotchPrompter.plist",
    "~/Library/Saved Application State/cl.gustavo.NotchPrompter.savedState",
  ]
end
