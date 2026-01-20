cask "quantum-clipboard" do
  version "0.1.0"
  sha256 "47360a66817ae3063b1356d4867355997c91c2d2eab325a7ebeb67b188db8735"

  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/0.1.0/Quantum-Clipboard.app.zip"
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
