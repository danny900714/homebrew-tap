cask "better-lyrics" do
  version "3.0.0+safari.0"
  sha256 "8e31cb267aed493f1359352fd55d984115726af41b672d91672743c1ab56f574"

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
