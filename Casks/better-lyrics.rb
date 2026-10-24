cask "better-lyrics" do
  version "3.0.1+safari.0"
  sha256 "dadcfe1e708ee653aed8e8fb5551c39162ecdcce8ac17f962b31ca51813e8f16"

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
