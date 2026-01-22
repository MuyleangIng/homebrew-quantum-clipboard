cask "quantum-clipboard" do
  version "0.1.4"
  sha256 "479b1c9133ffcfbd1ac8f8d3d6a0c82822d8eb47497e2a4b1776a7383fe24e5b"

  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/0.1.4/Quantum-Clipboard.app.zip"
  name "Quantum Clipboard"
  desc "Open-source clipboard manager for macOS"
  homepage "https://github.com/MuyleangIng/Quantum-Clipboard-Copy"

  app "Quantum Clipboard.app"

  caveats <<~EOS
    Quantum Clipboard is an open-source app and is NOT notarized by Apple.

    macOS Gatekeeper will block the app on first launch and show:
      “Quantum Clipboard is damaged and can’t be opened.”

    This is expected for non-notarized open-source apps.

    To allow the app to run, execute ONCE after installation:

      xattr -dr com.apple.quarantine "/Applications/Quantum Clipboard.app"

    Then open the app normally from Applications or Spotlight.
  EOS
end
