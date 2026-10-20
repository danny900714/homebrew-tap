cask "better-lyrics" do
  version "3.0.0+safari.0"
  sha256 "493fa6cdd2b80a660908e1e102b906c2c5902a630be01b0a35d541fb8ad15057"

  url "https://github.com/danny900714/better-lyrics-safari/releases/download/v#{version}/better-lyrics-#{version}.dmg"
  name "Better Lyrics"
  desc "Enhance YouTube Music with beautiful time-synced lyrics and translations"
  homepage "https://github.com/danny900714/better-lyrics-safari"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Better Lyrics.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/Better Lyrics.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/io.github.danny900714.better-lyrics",
    "~/Library/Application Scripts/io.github.danny900714.better-lyrics.Extension",
    "~/Library/Containers/io.github.danny900714.better-lyrics",
    "~/Library/Containers/io.github.danny900714.better-lyrics.Extension",
  ]
end
