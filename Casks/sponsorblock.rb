cask "sponsorblock" do
  version "6.1.7+safari.0"
  sha256 "d766b18b080a74b039b03cd563d49cd3dbad6da532ee58399cf346ad0a90858e"

  url "https://github.com/danny900714/sponsorblock-safari/releases/download/v#{version}/sponsorblock-#{version}.dmg"
  name "SponsorBlock for YouTube"
  desc "Skip sponsorships, subscription begging and more on YouTube videos"
  homepage "https://github.com/danny900714/sponsorblock-safari"

  depends_on macos: :sonoma

  app "SponsorBlock for YouTube.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/SponsorBlock for YouTube.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/io.github.danny900714.sponsorblock",
    "~/Library/Application Scripts/io.github.danny900714.sponsorblock.Extension",
    "~/Library/Containers/io.github.danny900714.sponsorblock",
    "~/Library/Containers/io.github.danny900714.sponsorblock.Extension",
  ]
end
