cask "sponsorblock" do
  version "6.1.7+safari.0"
  sha256 "df004572074e79b5578bc095a3e452893f2ab85e463b92944b19f286ba377a37"

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
