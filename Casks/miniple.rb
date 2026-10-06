cask "miniple" do
  version "0.1.0-dev.1"
  sha256 "a34f8c8667f90a8820b32eb7efdceea3364558ad3b27083b4218fcfc62bd28e0"

  url "https://github.com/GamjaIsMine02/miniple-releases/releases/download/v#{version}/MINIPLE-#{version}-arm64.zip"
  name "MINIPLE"
  desc "Mini player for YouTube Music"
  homepage "https://github.com/GamjaIsMine02/miniple-releases"

  livecheck do
    skip "Development prerelease"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MINIPLE.app"

  caveats <<~EOS
    Development build: ad-hoc signed, not Apple-notarized.
    macOS may block first launch. Homebrew installation does not bypass Gatekeeper.
    Requires Google sign-in inside MINIPLE; no Chrome extension is needed.
    An existing MINIPLE.app must be preserved or moved before using the default app directory.
  EOS
end
