cask "quantum-clipboard" do
  version "0.1.2"
  sha256 "26811d6768d7d1dca1b748d9b1ff4f7db980185b2eaef8a09e03c53b45ffe18c"

  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/0.1.2/Quantum-Clipboard.app.zip"
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
