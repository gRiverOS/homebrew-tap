cask "notch-prompter" do
  version "0.4.1"
  sha256 "89ca63541ae3729939bae7dc6241aa0966002524d49cc32cce4872ff5edc7a5d"

  url "https://github.com/gRiverOS/notch-prompter/releases/download/v#{version}/NotchPrompter-#{version}.zip"
  name "Notch Prompter"
  desc "Teleprompter that hangs from the MacBook notch"
  homepage "https://github.com/gRiverOS/notch-prompter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Notch Prompter.app"

  # delete: removes the pre-0.4.0 bundle, which was named without the space.
  # Upgrades run the new cask's uninstall, so without this the old app would be
  # left orphaned in /Applications alongside the renamed one.
  uninstall quit:   "cl.gustavo.NotchPrompter",
            delete: "/Applications/NotchPrompter.app"

  zap trash: [
    "~/Library/Caches/cl.gustavo.NotchPrompter",
    "~/Library/HTTPStorages/cl.gustavo.NotchPrompter",
    "~/Library/Preferences/cl.gustavo.NotchPrompter.plist",
    "~/Library/Saved Application State/cl.gustavo.NotchPrompter.savedState",
  ]
end
