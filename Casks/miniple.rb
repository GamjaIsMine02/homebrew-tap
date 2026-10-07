cask "miniple" do
  version "0.4.1-dev.1"
  sha256 "f023ddc5b18f04924882d4111bd5d998b96e40ebe5a21d11c2d583987068e9b8"

  url "https://github.com/GamjaIsMine02/miniple-releases/releases/download/v#{version}/MINIPLE-#{version}-arm64.zip"
  name "MINIPLE"
  desc "Lightweight mini player controlling existing Chrome YouTube Music"
  homepage "https://github.com/GamjaIsMine02/miniple-releases"

  livecheck do
    skip "Development prerelease"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MINIPLE.app"

  caveats <<~EOS
    MINIPLE v1 controls an existing Chrome YouTube Music PWA or tab via AppleScript.
    No Chrome extension, Chromium runtime, or separate Google sign-in is required.
    Open MINIPLE after installation; connection instructions appear until the first successful connection.
    Approve macOS Automation for MINIPLE -> Chrome, then enable Chrome's
    View -> Developer -> Allow JavaScript from Apple Events manually.
    These permissions apply to Chrome, not exclusively to YouTube Music.
    Development build: ad-hoc signed, not Apple-notarized. macOS may block launch.
    Homebrew does not bypass Gatekeeper or change browser/security settings.
    Unmanaged MINIPLE.app installations must be preserved before using that app directory.
  EOS
end
